valueAt: aPoint put: maskCode
	"Set the bit in the receiver at coordinate aPoint to be white (0) or black (1)."


	maskCode = 0
	  ifTrue: [OneBitForm white] 	"OneBitForm is a class variable."
	  ifFalse: [OneBitForm black].
	self
	  copyBits: OneBitForm boundingBox
	  from: OneBitForm
	  at: aPoint
	  clippingBox: self boundingBox
	  rule: Form over
	  mask: Form black.
