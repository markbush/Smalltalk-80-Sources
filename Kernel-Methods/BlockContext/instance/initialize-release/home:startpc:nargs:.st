home: aContextPart startpc: position nargs: anInteger
	"This is the initialization message.  The receiver has been
	initialized with the correct size only."

	home _ aContextPart.
	startpc _ position.
	nargs _ anInteger.
	pc _ position.
	stackp _ 0
