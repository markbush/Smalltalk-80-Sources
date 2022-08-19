asForm
	"Answer a new Form made up of the bits that represent the receiver's
	dispayable text."

	| aForm saveDestinationForm |
	aForm _ Form new extent: compositionRectangle extent.
	saveDestinationForm _ destinationForm.
	self displayOn: aForm
		at: 0 @ 0
		clippingBox: aForm boundingBox
		rule: Form over
		mask: Form black.
	aForm offset: offset.
	destinationForm _ saveDestinationForm.
	^aForm
