exampleSketch
	"This is a simple drawing algorithm to get a sketch on the display screen.  After
	executing, just keep the mouse button depressed and a pen will let you
	scribble."

	| aPen |
	aPen _ Pen new.
	Sensor waitButton.
	aPen place: Sensor cursorPoint.
	aPen down.
	[Sensor anyButtonPressed]
		whileTrue: [aPen goto: Sensor cursorPoint]

	"Form exampleSketch."
