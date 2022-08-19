line
	"Rubber-band line is specified by two points from the mouse. The resultant
	line on the display is displayed according to the current form and mode."

	| firstPoint endPoint |
	firstPoint _ self cursorPoint.
	endPoint _ self rubberBandFrom: firstPoint until: [sensor noButtonPressed].
	(Line from: firstPoint to: endPoint withForm: form)
		displayOn: Display
		at: 0 @ 0
		clippingBox: view insetDisplayBox
		rule: mode
		mask: color
