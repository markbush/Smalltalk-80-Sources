convexShapeFill: aMask
	"Fill the interior of the outtermost outlined region in the receiver.  The outlined region must not be concave by more than 90 degrees."

	| destForm tempForm skew |
	destForm _ Form extent: self extent.
	tempForm _ Form extent: self extent.
	self displayOn: tempForm at: (0@0) - self offset.
	skew _ 1.
	[skew < width] whileTrue:
		[tempForm displayOn: tempForm at: skew@0
			clippingBox: tempForm boundingBox rule: Form under mask: nil.
		skew _ skew+skew].
	tempForm displayOn: destForm.

	self displayOn: tempForm at: (0@0) - self offset.
	skew _ 1.
	[skew < width] whileTrue:
		[tempForm displayOn: tempForm at: skew negated@0
			clippingBox: tempForm boundingBox rule: Form under mask: nil.
		skew _ skew+skew].
	tempForm displayOn: destForm at: 0@0
		clippingBox: destForm boundingBox rule: Form and mask: nil.

	self displayOn: tempForm at: (0@0) - self offset.
	skew _ 1.
	[skew < height] whileTrue:
		[tempForm displayOn: tempForm at: 0@skew
			clippingBox: tempForm boundingBox rule: Form under mask: nil.
		skew _ skew+skew].
	tempForm displayOn: destForm at: 0@0
		clippingBox: destForm boundingBox rule: Form and mask: nil.

	self displayOn: tempForm at: (0@0) - self offset.
	skew _ 1.
	[skew < height] whileTrue:
		[tempForm displayOn: tempForm at: 0@skew negated
			clippingBox: tempForm boundingBox rule: Form under mask: nil.
		skew _ skew+skew].
	tempForm displayOn: destForm at: 0@0
		clippingBox: destForm boundingBox rule: Form and mask: nil.

	destForm displayOn: self at: 0@0
			clippingBox: self boundingBox rule: Form over mask: aMask
