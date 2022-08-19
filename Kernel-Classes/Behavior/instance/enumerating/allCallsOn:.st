allCallsOn: aLiteral
	"Answer a SortedCollection of all the methods that call on aLiteral."

	| aSortedCollection special |
	aSortedCollection _ SortedCollection new.
	special _ Smalltalk hasSpecialSelector: aLiteral ifTrueSetByte: [:byte ].
	(self withAllSuperclasses reverse) , self allSubclasses do:
		[:class |
		(class whichSelectorsReferTo: aLiteral special: special byte: byte) do:
			[:sel | sel ~~ #DoIt ifTrue: [aSortedCollection add: class name , ' ' , sel]].
		(class class whichSelectorsReferTo: aLiteral special: special byte: byte) do:
			[:sel | sel ~~ #DoIt ifTrue: [aSortedCollection add: class class name , ' ' , sel]].
		].
	^aSortedCollection
