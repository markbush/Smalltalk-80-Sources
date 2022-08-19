fromUser: gridPoint
	"Answer an instance of me that is determined by having the
	user designate the top left and bottom right corners.  The gridding for
	user selection is gridPoint."

	| originPoint newSelf minCorner oldCursor|
	oldCursor _ Sensor currentCursor.
	Cursor cursorLink: false.
	originPoint _ Sensor cursorPoint grid: gridPoint.
	[Sensor redButtonPressed]
		whileFalse:
			[Processor yield.
			Cursor origin showGridded: gridPoint.
			originPoint _ Sensor cursorPoint grid: gridPoint].
	newSelf _ self new origin: originPoint.
	minCorner _ originPoint + gridPoint.
	Sensor cursorPoint: minCorner.
	[Sensor redButtonPressed]
			whileTrue:
				[Processor yield.
				Cursor corner showGridded: gridPoint.
				newSelf corner: ((Sensor cursorPoint grid: gridPoint) max: minCorner).
				Display flash: newSelf].
	Cursor cursorLink: true.
	oldCursor show.
	^newSelf

	"Rectangle fromUser: 100@100."
