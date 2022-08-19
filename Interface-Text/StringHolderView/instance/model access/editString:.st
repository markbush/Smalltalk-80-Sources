editString: aString
	"The paragraph to be displayed is created from the characters in aString."

	displayContents _ Paragraph
				withText: aString asText
				style: TextStyle default copy
				compositionRectangle: (self insetDisplayBox insetBy: self paragraphInset)
				clippingRectangle: self insetDisplayBox.
	(self controller isKindOf: ParagraphEditor)
		ifTrue: [controller changeParagraph: displayContents]
