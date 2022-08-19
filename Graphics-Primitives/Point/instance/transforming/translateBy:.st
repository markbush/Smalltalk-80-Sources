translateBy: delta
	"Answer a new Point translated by delta (an instance of Point)."

	^(delta x + x) @ (delta y + y)
