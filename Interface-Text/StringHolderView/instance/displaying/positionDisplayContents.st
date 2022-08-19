positionDisplayContents
	"Presumably the text being displayed changed so that the wrapping box and clipping box should be reset."

	displayContents
		recomposeIn: (self insetDisplayBox insetBy: self paragraphInset)
		clippingBox: self insetDisplayBox
