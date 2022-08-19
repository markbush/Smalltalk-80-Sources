display
	self isUnlocked
		ifTrue:
			[self positionDisplayContents.
			(self controller isKindOf: ParagraphEditor)
				ifTrue: [controller recomputeSelection]].
	super display
