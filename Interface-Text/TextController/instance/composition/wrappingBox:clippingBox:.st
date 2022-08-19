wrappingBox: wrapRectangle clippingBox: clipRectangle
	paragraph recomposeIn: wrapRectangle clippingBox: clipRectangle.
	self selectFrom: startBlock stringIndex to: stopBlock stringIndex-1
