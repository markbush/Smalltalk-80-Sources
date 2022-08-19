scroll
	"Check to see whether the user wishes to jump, scroll up, or scroll down."

	| savedCursor regionPercent |
	savedCursor _ sensor currentCursor.
	[self scrollBarContainsCursor]
		whileTrue:
			[Processor yield.
			regionPercent _ 100 * (sensor cursorPoint x - scrollBar left) // scrollBar width.
			regionPercent <= 40
				ifTrue: [self scrollDown]
				ifFalse: [regionPercent >= 60
							ifTrue: [self scrollUp]
							ifFalse: [self scrollAbsolute]]].
	savedCursor show
