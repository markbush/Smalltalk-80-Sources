scaleBy: aPoint
	"Answer a new Quadrangle scaled by aPoint."

	^ Quadrangle
		region: (super scaleBy: aPoint)
		borderWidth: borderWidth
		borderColor: borderColor
		insideColor: insideColor
