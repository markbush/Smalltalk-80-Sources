returnField
	"Answer the index of the instance variable returned by a quick
	return method."

	self flags ~= 6
		ifTrue: [self error: 'only meaningful for quick-return']
		ifFalse: [^self numTempsField]
