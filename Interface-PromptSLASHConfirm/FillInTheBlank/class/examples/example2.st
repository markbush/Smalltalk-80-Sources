example2
	"Example waits for you to click red button somewhere on the screen. The
	view will show where you point.  Terminate by choosing menu command accept or
	typing carriage return."

	FillInTheBlank
		request: 'What is your name?'
		displayAt: Sensor waitButton
		centered: true
		action: [:answer | Transcript cr; show: answer]
		initialAnswer: ''

	"FillInTheBlank example2."
