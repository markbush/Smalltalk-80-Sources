exampleTwo
	"Frame a Form (specified by the user) that is scaled by 2.  The border is
	2 bits in width.  Displays at locatoin 100,100."

	| f view |
	f _ Form fromUser.
	view _ self new model: f.
	view scaleBy: 2.0.
	"if you eliminate this message, no inside border displays"
	view translateBy: 100 @ 100.
	view borderWidth: 2.
	view insideColor: Form white.
	view display.
	view release

	"FormView exampleTwo."
