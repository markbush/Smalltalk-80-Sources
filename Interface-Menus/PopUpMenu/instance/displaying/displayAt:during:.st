displayAt: aPoint during: aBlock
	"Display the receiver centered at aPoint while aBlock is evaluated.
	If necessary, translate so the view is completely on the screen."

	| delta savedArea |
	frame _ frame align: marker center with: aPoint.
	delta _ frame amountToTranslateWithin: Display boundingBox.
	frame moveBy: delta.
	marker _ marker align: marker center with: aPoint + delta.
	savedArea _ Form fromDisplay: frame.
	Display black: (frame origin + (1@1) corner: frame corner).
	Display black: (frame origin corner: frame corner - (1@1)).
	form displayOn: Display at: frame inside topLeft clippingBox: frame inside.
	selection ~= 0 ifTrue: [Display reverse: marker].
	aBlock value.
	savedArea displayOn: Display at: frame topLeft
