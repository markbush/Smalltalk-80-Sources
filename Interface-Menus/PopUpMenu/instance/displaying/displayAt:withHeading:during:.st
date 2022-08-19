displayAt: aPoint withHeading: aText during: aBlock
	"Display the receiver centered at aPoint while aBlock is evaluated.
	If necessary, translate so the view is completely on the screen."

	| delta savedArea heading headingBox headingSavedArea |
	frame _ frame align: marker center with: aPoint.
	heading _ aText asDisplayText.
	headingBox _ heading boundingBox expandBy: 2.
	headingBox _ headingBox
			align: headingBox bottomCenter
			with: frame topCenter + (0@2).
	delta _ (frame merge: headingBox) amountToTranslateWithin: Display boundingBox.
	frame moveBy: delta.
	headingBox moveBy: delta.
	marker _ marker align: marker center with: aPoint + delta.
	savedArea _ Form fromDisplay: frame.
	headingSavedArea _ Form fromDisplay: headingBox.
	Display border: (headingBox) width: 2 mask: Form black.
	heading displayAt: headingBox origin + (2@2).
	Display black: (frame origin + (1@1) corner: frame corner).
	Display black: (frame origin corner: frame corner - (1@1)).
	form displayOn: Display at: frame inside topLeft clippingBox: frame inside.
	selection ~= 0 ifTrue: [Display reverse: marker].
	aBlock value.
	savedArea displayOn: Display at: frame topLeft.
	headingSavedArea displayOn: Display at: headingBox topLeft
