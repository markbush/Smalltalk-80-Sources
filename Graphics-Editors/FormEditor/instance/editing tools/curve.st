curve
	"Conic-section specified by three points from the mouse.
	the resultant curve on the display is displayed according to the
	current form and mode."

	| firstPoint secondPoint curve |
	firstPoint _ self cursorPoint.
	form
		displayOn: Display
		at: firstPoint
		clippingBox: view insetDisplayBox
		rule: mode
		mask: color.
	secondPoint _ self trackFormUntil: [sensor noButtonPressed].
	curve _ self rubberBandCurve: firstPoint to: secondPoint until: [sensor redButtonPressed].
	curve
		displayOn: Display
		at: 0 @ 0
		clippingBox: view insetDisplayBox
		rule: mode
		mask: color.
	sensor waitNoButton
