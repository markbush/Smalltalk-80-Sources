whichSelectorsReferTo: literal
	"Answer a set of selectors whose methods access the argument as a literal."

	| special |
	special _ Smalltalk hasSpecialSelector: literal ifTrueSetByte: [:byte ].
	^self whichSelectorsReferTo: literal special: special byte: byte

	"Rectangle whichSelectorsReferTo: #+."
