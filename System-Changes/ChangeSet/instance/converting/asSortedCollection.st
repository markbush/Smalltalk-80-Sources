asSortedCollection
	"Answer a new instance of SortedCollection whose elements are Strings describing the changes represented by the receiver."

	| summary |
	summary _ SortedCollection new.
	classChanges associationsDo:
		[:clAssoc |
		clAssoc value do:
			[:changeType | summary add: clAssoc key, ' - ', changeType]].
	methodChanges associationsDo:
		[:clAssoc |
		clAssoc value associationsDo:
			[:mAssoc | summary add: clAssoc key, ' ', mAssoc key, ' - ', mAssoc value]].
	classRemoves do:
		[:name | summary add: name, ' - ', 'remove'].
	reorganizeSystem ifTrue: [summary add: 'Reorganize System'].
	specialDoIts isEmpty not ifTrue:
		[summary add: 'SpecialDoIts - (', specialDoIts size printString, ')'].
	^summary
