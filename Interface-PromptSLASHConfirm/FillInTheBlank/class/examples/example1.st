example1
	"Example waits for you to click red button somewhere on the screen. The
	view will show where you point.  Terminate by choosing menu command accept."

	FillInTheBlank
		message: 'What is your name?'
		displayAt: Sensor waitButton
		centered: true
		action: [:answer | Transcript cr; show: answer]
		initialAnswer: ''

	"FillInTheBlank example1."
