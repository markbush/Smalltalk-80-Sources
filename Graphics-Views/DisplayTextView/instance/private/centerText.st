centerText
	self isCentered
		ifTrue:
			[editParagraph
				align: editParagraph boundingBox center
				with: self getWindow center]
