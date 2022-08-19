recomposeIn: compositionRect clippingBox: clippingRect
	"Set the composition rectangle for the receiver so that the lines wrap
	within the rectangle, compositionRect, and the display of the text is
	clipped by the rectangle, clippingRect."

	self compositionRectangle: compositionRect copy
		text: text
		style: textStyle
		offset: offset
		outputMedium: #Display
		fitWidth: false.
	clippingRectangle _ clippingRect copy
