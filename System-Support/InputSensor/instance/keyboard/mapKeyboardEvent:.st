mapKeyboardEvent: aKeyboardEvent
	"Answer the character corresponding to the character in aKeyboardEvent"

	| meta |
	meta _ aKeyboardEvent hasShift
				ifTrue: [256]
				ifFalse: [0].
	aKeyboardEvent hasCtrl ifTrue: [meta _ meta + 512].
	meta = 0 ifTrue: [aKeyboardEvent hasLock ifTrue: [meta _ 1024]].
	^keyboardMap at: aKeyboardEvent keyCharacter asciiValue + meta + 1
