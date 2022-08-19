category: selection
	category _ selection.
	selection isNil ifTrue: [self textMode: nil].
	self newClassList: className
