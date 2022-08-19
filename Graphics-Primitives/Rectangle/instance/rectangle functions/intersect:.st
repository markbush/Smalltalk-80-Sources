intersect: aRectangle
	"Answer a Rectangle that is the area in which the receiver overlaps with
	aRectangle. "

	^Rectangle
		origin: (origin max: aRectangle origin)
		corner: (corner min: aRectangle corner)
