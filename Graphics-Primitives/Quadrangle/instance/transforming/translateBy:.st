translateBy: aPoint
	"Answer a new Quadrangle translated by aPoint."

	^ Quadrangle
		region: (super translateBy: aPoint)
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor
