categoriesSelect: aBlock
	"Smalltalk categoriesSelect: [:catName | catName first = $A]"

	| aDictionary aStream |
	aDictionary _ IdentityDictionary new: 512.
	aStream _ WriteStream on: (Array new: 500).
	Smalltalk allBehaviorsDo:
		[:class | class organization categories do:
			[:catName |
			(aBlock value: catName)
				ifTrue: [aStream nextPut: class name, ' >> ',catName]]].
	^aStream contents asSortedCollection
