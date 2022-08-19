allCallsOn: aLiteral clampedBy: nameSet
	"Specialized version of the SystemDictionary allCallsOn:,
	which doesnt include calls from clamped classes."
	| aSortedCollection classNames class name special |
	aSortedCollection _ SortedCollection new.
	special _ Smalltalk hasSpecialSelector: aLiteral ifTrueSetByte: [:byte ].
	classNames _ Smalltalk classNames.
	nameSet do: [:name | classNames remove: name ifAbsent: []].
	Cursor execute showWhile:
		[classNames do:
			[:name | class _ Smalltalk at: name.
			(class whichSelectorsReferTo: aLiteral special: special byte: byte) do:
				[:sel | sel ~~ #DoIt
					ifTrue: [aSortedCollection add: class name , ' ' , sel]].
			class _ class class.
			(class whichSelectorsReferTo: aLiteral special: special byte: byte) do:
				[:sel | sel ~~ #DoIt
					ifTrue: [aSortedCollection add: class name , ' ' , sel]]]].
	^aSortedCollection
