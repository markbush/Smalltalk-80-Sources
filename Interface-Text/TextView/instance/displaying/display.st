display
	self isUnlocked
		ifTrue:
			[self controller
				wrappingBox: (self insetDisplayBox insetBy: 6 @ 0)
				clippingBox: self insetDisplayBox.
			"ugly initialization hack: "
			(controller text isEmpty and: [controller textHasChanged not])
				ifTrue: [self newText: self getText]].
	super display
