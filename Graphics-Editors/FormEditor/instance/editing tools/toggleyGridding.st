toggleyGridding
	"Turns y (vertical) gridding off, if it is on, and turns it on, if
	it is off.  Does not change the primary tool."

	ygridOn
		ifTrue:
			[grid y: 1.
			ygridOn _ false]
		ifFalse:
			[grid y: togglegrid y.
			ygridOn _ true].
	tool _ previousTool
