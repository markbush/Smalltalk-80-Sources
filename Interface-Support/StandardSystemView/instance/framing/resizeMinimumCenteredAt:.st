resizeMinimumCenteredAt: aPoint
	"Determine the rectangular area for the receiver, adjusted so that it is centered
	a position, aPoint."

	| aRectangle |
	aRectangle _ 0 @ 0 extent: self minimumSize.
	aRectangle _ aRectangle align: aRectangle center with: aPoint.
	self window: self window viewport: aRectangle
