scrollRectangleHeight
	^paragraph compositionRectangle height
		+ paragraph clippingRectangle height
		- paragraph lineGrid
