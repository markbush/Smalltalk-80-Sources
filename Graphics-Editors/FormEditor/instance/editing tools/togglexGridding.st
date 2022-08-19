togglexGridding
	"Turns x (horizontal) gridding off, if it is on, and turns it on, if
	it is off.  Does not change the primary tool."

	xgridOn
		ifTrue:
			[grid x: 1.
			xgridOn _ false]
		ifFalse:
			[grid x: togglegrid x.
			xgridOn _ true].
	tool _ previousTool
