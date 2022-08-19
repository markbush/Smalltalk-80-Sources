outline
	"Display a border around the visible area in which the receiver
	presents its text."

	clippingRectangle bottom <= compositionRectangle bottom
	  ifTrue: [Display
				border: (clippingRectangle intersect: compositionRectangle)
				width: 2]
	  ifFalse: [Display
				border: (clippingRectangle intersect: destinationForm boundingBox)
				width: 2].
