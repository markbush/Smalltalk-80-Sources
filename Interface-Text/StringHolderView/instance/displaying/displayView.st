displayView
	self clearInside.
	(self controller isKindOf: ParagraphEditor)
		ifTrue: [controller display]
		ifFalse: [displayContents display]
