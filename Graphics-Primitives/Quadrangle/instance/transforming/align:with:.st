align: aPoint1 with: aPoint2
	"Answer a new Quadrangle translated by aPoint2 - aPoint1."

	^ Quadrangle
		region: (super translateBy: aPoint2 - aPoint1)
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor
