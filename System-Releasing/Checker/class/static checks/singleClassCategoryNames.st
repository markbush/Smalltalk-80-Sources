singleClassCategoryNames
	"Return the names of all the categories defined in only one class, alphabetic
	Smalltalk singleClassCategoryNames."

	| aDictionary aStream |
	aDictionary _ IdentityDictionary new: 512.
	Smalltalk allBehaviorsDo:
		[:class | class organization categories do:
			[:catName |
			(aDictionary includesKey: catName)
				ifTrue: [(aDictionary at: catName) = nil
							ifFalse: [aDictionary at: catName put: nil]]
				ifFalse: [aDictionary at: catName put: class name]]].
	aStream _ WriteStream on: (Array new: 500).
	aDictionary associationsDo:
		[:assn |
		assn value == nil
			ifFalse: [aStream nextPut: assn value, ' >> ',assn key]].
	^aStream contents asSortedCollection
