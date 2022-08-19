exampleAt: originPoint rule: rule mask:  mask
	"This builds a source and destination form and copies the source to the destination
	using the specifed rule and mask.  It is called from the method named exampleOne."

	| s d border aBitBlt |
	border_Form new extent: 32@32.
	border black.
	border fill: (1@1 extent: 30@30) mask: Form white.
	s_Form new extent: 32@32.
	s white.
	s fill: (7@7 corner: 25@25) mask: Form black.
	d_Form new extent: 32@32.
	d white.
	d fill: (0@0 corner: 32@16) mask: Form black.

	s displayOn: Display at: originPoint.
	border displayOn: Display at: originPoint rule: Form under.
	d displayOn: Display at: originPoint + (s width @0).
	border displayOn: Display at: originPoint + (s width @0) rule: Form under.

	d displayOn: Display at: originPoint + (s extent // (2 @ 1)).
	aBitBlt _ BitBlt
		destForm: Display
		sourceForm: s
		halftoneForm: mask
		combinationRule: rule
		destOrigin: originPoint + (s extent // (2 @ 1))
		sourceOrigin: 0 @ 0
		extent: s extent
		clipRect: Display computeBoundingBox.
	aBitBlt copyBits.
	border
		displayOn: Display at: originPoint + (s extent // (2 @ 1))
		rule: Form under.

	"BitBlt exampleAt: 100@100 rule: 3 mask: Form gray."
