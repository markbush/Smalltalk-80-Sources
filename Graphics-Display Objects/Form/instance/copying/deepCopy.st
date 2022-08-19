deepCopy
	| newForm |
	newForm _ self shallowCopy.
	newForm bits: (WordArray new: self size).
	newForm copyBits: self boundingBox
		from: self
		at: 0 @ 0
		clippingBox: newForm boundingBox
		rule: Form over
		mask: Form black.
	^newForm
