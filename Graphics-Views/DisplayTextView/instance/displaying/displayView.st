displayView
	self clearInside.
	(self controller isKindOf: ParagraphEditor )
		ifTrue: [controller changeParagraph: editParagraph].
	self isCentered
		ifTrue:
			[editParagraph
				displayOn: Display
				transformation: self displayTransformation
				clippingBox: self insetDisplayBox
				fixedPoint: editParagraph boundingBox center]
		ifFalse:
			[editParagraph displayOn: Display]
