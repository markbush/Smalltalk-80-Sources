confirm: aString
	"Create and start up a BinaryChoice menu with the argument as the message in order
	to determine true or false.  Answers true or false."
	| answer |
	answer _ false.
	BinaryChoice
		message: aString
		displayAt: Sensor cursorPoint
		centered: true
		ifTrue: [answer _ true]
		ifFalse: [answer _ false].
	^answer
