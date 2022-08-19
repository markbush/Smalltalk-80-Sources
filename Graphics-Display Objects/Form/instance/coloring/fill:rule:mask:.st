fill: aRectangle rule: anInteger mask: aForm
	"Replace a rectangular area of the receiver with the pattern described by aForm
	according to the rule anInteger."

	"Make up a BitBlt table and copy the bits"
	(BitBlt
		destForm: self
		sourceForm: nil
		halftoneForm: aForm
		combinationRule: anInteger
		destOrigin: aRectangle origin
		sourceOrigin: self boundingBox origin
		extent: aRectangle extent
		clipRect: self boundingBox) copyBits
