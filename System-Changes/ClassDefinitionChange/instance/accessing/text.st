text
	^file == nil
		ifTrue: [(Smalltalk at: className) definition]
		ifFalse: [super text]
