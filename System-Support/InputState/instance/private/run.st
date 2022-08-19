run
	"This is the loop that actually processes input events."

	| word type param |
	[true]
		whileTrue:
			[InputSemaphore wait.
			"Test for mouse X/Y events here to avoid an activation."
			word _ self primInputWord.
			type _ word bitShift: -12.
			param _ word bitAnd: 4095.
			type = 1
				ifTrue:
					[x _ param "Mouse X"]
				ifFalse:
					[type = 2
						ifTrue: [y _ param "Mouse Y"]
						ifFalse: [self nextEvent: type with: param]]]
