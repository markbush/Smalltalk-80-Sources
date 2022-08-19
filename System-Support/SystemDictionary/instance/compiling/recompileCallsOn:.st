recompileCallsOn: aLiteral
	"Recompile every message in the system that refers to aLiteral."

	| special |
	special _ self hasSpecialSelector: aLiteral ifTrueSetByte: [:byte ].
	Cursor execute showWhile:
		[self allBehaviorsDo:
			[:class | (class whichSelectorsReferTo: aLiteral special: special byte: byte)
				do: [:sel | sel ~~ #DoIt ifTrue: [class recompile: sel]]]]
