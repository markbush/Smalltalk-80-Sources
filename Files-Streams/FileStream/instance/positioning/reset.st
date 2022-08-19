reset
	"set position to beginning of File"

	(self read: 1) isNil ifTrue: [self error: 'reset']
