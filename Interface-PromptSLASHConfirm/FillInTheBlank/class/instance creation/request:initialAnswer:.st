request: messageString initialAnswer: aString
	"Create an instance of me whose question is messageString.
	Display it centered around the cursor.
	Supply aString as an initial answer.
	Simply return whatever the user accepts."

	self
		request: messageString
		displayAt: Sensor cursorPoint
		centered: true
		action: [:response | response]
		initialAnswer: aString.
	^response
