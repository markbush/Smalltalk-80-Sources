allCallsOn: firstLiteral and: secondLiteral
	"Answer a SortedCollection of all the methods that call on both aLiteral and
	secondLiteral."

	| aCollection secondArray firstSpecial secondSpecial |
	aCollection _ SortedCollection new.
	firstSpecial _ self hasSpecialSelector: firstLiteral ifTrueSetByte: [:firstByte].
	secondSpecial _ self hasSpecialSelector: secondLiteral ifTrueSetByte: [:secondByte].
	Cursor execute showWhile:
		[self allBehaviorsDo:
			[:class |
			secondArray _ class whichSelectorsReferTo: secondLiteral special: secondSpecial byte: secondByte.
			((class whichSelectorsReferTo: firstLiteral special: firstSpecial byte: firstByte) select:
				[:aSel | (secondArray includes: aSel)]) do:
						[:sel | aCollection add: class name , ' ' , sel]]].
	^aCollection
