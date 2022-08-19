text
	^file == nil
		ifTrue: [className, ' comment:
', (Smalltalk at: className) comment printString]
		ifFalse: [super text]
