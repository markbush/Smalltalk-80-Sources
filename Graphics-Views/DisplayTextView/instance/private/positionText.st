positionText
	| box |
	box _ self insetDisplayBox origin + self paragraphInset
			extent: editParagraph boundingBox extent.
	editParagraph recomposeIn: box clippingBox: box.
	self centerText
