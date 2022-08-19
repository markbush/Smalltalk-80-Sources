example
	"This simple example illustrates how to display a few lines of text on the screen at
	the current cursor point."

	| para point |
	point _ Sensor waitButton.
	para _ 'this is the first line of characters
and this is the second line comprising this TextForm.' asParagraph.
	para displayOn: Display at: point.
	para
		displayOn: Display at: point + (0 @ para height)
		clippingBox: Display boundingBox
		rule: Form over
		mask: Form gray

	"Paragraph example."
