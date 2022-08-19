translateBy: factor
	"Answer a new Rectangle translated by factor, a Point or a scalar."

	^Rectangle origin: origin + factor corner: corner + factor
