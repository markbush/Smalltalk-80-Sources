scaleBy: scale
	"Answer a new Rectangle scaled by scale, a Point or a scalar."

	^Rectangle origin: origin * scale corner: corner * scale
