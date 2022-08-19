allCallsOn: aLiteral
	"Answer a SortedCollection of all the methods that call on aLiteral."

	| aSortedCollection special |
	aSortedCollection _ SortedCollection new.
	special _ self hasSpecialSelector: aLiteral ifTrueSetByte: [:byte ].
	Cursor execute showWhile:
		[self allBehaviorsDo:
			[:class |
			 (class whichSelectorsReferTo: aLiteral special: special byte: byte) do:
				[:sel | sel ~~ #DoIt
					ifTrue: [aSortedCollection add: class name , ' ' , sel]]]].
	^aSortedCollection
