magnifyBy: scale
	"Answer a new form created as a multiple of the receiver; the new form
	is larger, each bit in the receiver being blown up to extent=scale"

	| wideForm bigForm spacing |
	spacing _ 0 @ 0.
	wideForm _ Form new extent: (width * scale x) @ height.
	wideForm
		spread: self boundingBox
		from: self
		by: scale x
		spacing: spacing x
		direction: 1 @ 0.
	bigForm _ Form new extent: self extent * scale.
	bigForm
		spread: wideForm boundingBox
		from: wideForm
		by: scale y
		spacing: spacing y
		direction: 0 @ 1.
	^bigForm

	"Check consistency of shrink and magnify:
	[Sensor redButtonPressed] whileFalse:
		[(((Form fromDisplay: (Sensor cursorPoint extent: 50@50))
			magnifyBy: 3@5) shrinkBy: 3@5)
				displayAt: 100@100]
	"
