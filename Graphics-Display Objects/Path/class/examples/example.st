example
	"Creates a Path from mousePoints and displays it several ways on the display
	screen.  Messes up the display. for learning about class Path.
	just select the code below and execute it to create a path and see it redisplayed in
	another place on the screen.  Each path displays using a different form.  A path
	is indicated by pressing the red mouse button in sequence;  press any other
	mouse button to terminate."

	| aPath aForm p1 f1 flag |
	aForm _ Form new extent: 2 @ 40.
	"creates a form one inch long"
	aForm black.
	"turns it black"
	aPath _ Path new.
	aPath form: aForm.
	"use the long black form for display"
	flag _ true.
	[flag]
		whileTrue:
			[Sensor waitButton.
			Sensor redButtonPressed
				ifTrue:
					[aPath add: Sensor waitButton.
					Sensor waitNoButton.
					aForm displayOn: Display at: aPath last]
				ifFalse: [flag _ false]].
	Display white.
	aPath displayOn: Display.			"the original path"
	p1 _ aPath translateBy: 0 @ 300.
	f1 _ Form new extent: 40 @ 40.
	f1 gray.
	p1 form: f1.
	p1 displayOn: Display.		"the translated path"
	Sensor waitNoButton

	"Path example."
