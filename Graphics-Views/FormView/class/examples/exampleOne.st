exampleOne
	"Frame a Form (specified by the user) with a border of 5 bits in width and
	display it offset 100 x 100 from the corner of the display screen."

	| f view |
	f _ Form fromUser.
	view _ self new model: f.
	view translateBy: 100 @ 100.
	view borderWidth: 2.
	view insideColor: Form white.
	view display.
	view release

	"FormView exampleOne."
