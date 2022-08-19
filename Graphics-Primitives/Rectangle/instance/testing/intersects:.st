intersects: aRectangle
	"Answer whether aRectangle intersects the receiver anywhere."

	^(origin max: aRectangle origin) < (corner min: aRectangle corner)
