accept
	model
		copyBits: displayedForm boundingBox
		from: displayedForm
		at: 0 @ 0
		clippingBox: model boundingBox
		rule: Form over
		mask: Form black.
	model changed: self
