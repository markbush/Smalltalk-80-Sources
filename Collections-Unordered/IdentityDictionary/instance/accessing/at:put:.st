at: key put: value
	"Set the value at key to be value."

	| index |
	index _ self findKeyOrNil: key.
	(self basicAt: index) == nil
		ifTrue:
			[tally _ tally + 1.
			self basicAt: index put: key].
	valueArray at: index put: value.
	self fullCheck.
	^value
