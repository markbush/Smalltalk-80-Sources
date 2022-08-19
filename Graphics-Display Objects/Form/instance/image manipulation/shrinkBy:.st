shrinkBy: scale
	"Answer a scaled-down copy of the receiver.  Each bit in the new form is a
	sample taken from the upper-left bit of a rectangle of extent = scale in the
	receiver.  A more involved algorithm would count the bits in the rectangle
	and produce black only if more than half were black"

	| wideForm shrunkenForm saveOffset |
	saveOffset _ self offset.
	self offset: 0 @ 0.
	wideForm _ Form new extent: self width @ (self height // scale y).
	0 to: wideForm height-1 do:
		[:index |
		wideForm copy: (0 @ index extent: wideForm width @ 1)
			from: 0 @ (index * scale y)
			in: self
			rule: Form over].
	shrunkenForm _ Form new extent: self width // scale x @ wideForm height.
	0 to: shrunkenForm width-1 do:
		[:index |
		shrunkenForm
			copy: (index @ 0 extent: 1 @ wideForm height)
			from: (index * scale x) @ 0
			in: wideForm
			rule: Form over].
	self offset: saveOffset.
	shrunkenForm offset: offset // scale.
	^shrunkenForm
