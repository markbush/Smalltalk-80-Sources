getFrame
	"Ask the user to designate a rectangular area in which the receiver should
	be displayed."

	| origin minimumCorner maximumCorner frame corner |
	Sensor waitNoButton.
	Cursor origin
		showWhile:
			[origin _ Sensor cursorPoint.
			[Sensor redButtonPressed]
				whileFalse: [Processor yield.
							 origin _ Sensor cursorPoint]].
	minimumCorner _ origin + self minimumSize.
	maximumCorner _ origin + self maximumSize.
	frame _ origin corner: minimumCorner.
	Display fill: frame rule: Form reverse mask: Form gray.
	Display fill: frame rule: Form reverse mask: Form gray.
	minimumCorner = maximumCorner
		ifFalse:
			[Sensor cursorPoint: minimumCorner.
			Cursor corner
				showWhile:
					[corner _ Sensor cursorPoint.
					[Sensor redButtonPressed]
						whileTrue:
							[Processor yield.
							frame _ origin corner:
										((corner max: minimumCorner)
											min: maximumCorner).
	Display fill: frame rule: Form reverse mask: Form gray.
	Display fill: frame rule: Form reverse mask: Form gray.
							corner _ Sensor cursorPoint]]].
	^frame
