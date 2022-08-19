resize
	"Determine the rectangular area for the receiver, adjusted to the minimum
	and maximum sizes."

	| aRectangle |
	aRectangle _ self getFrame.
	aRectangle _ aRectangle origin extent:
					((aRectangle extent max: minimumSize) min: maximumSize).
	self window: self window viewport: aRectangle.
