clippingBox
	"Answer the rectangle in which the model can be displayed--this
	is the insetDisplayBox inset by the height of a line for an item."

	^self insetDisplayBox insetBy:
		(Rectangle
			left: 0
			right: 0
			top: 0
			bottom: self insetDisplayBox height \\ list lineGrid)
