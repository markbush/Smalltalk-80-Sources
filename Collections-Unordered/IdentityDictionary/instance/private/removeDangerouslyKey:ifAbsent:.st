removeDangerouslyKey: key ifAbsent: errorBlock
	| location oldKey length entry |
	location _ self findKeyOrNil: key.
	(self basicAt: location) == nil ifTrue: [^errorBlock value].
	self basicAt: location put: nil.
	valueArray at: location put: nil.
	tally _ tally - 1.
	length _ self basicSize.
	[location _
		location = length
			ifTrue: [1]
			ifFalse: [location + 1].
	(self basicAt: location) == nil]
		whileFalse:
			[oldKey _ self findKeyOrNil: (self basicAt: location).
			location = oldKey ifFalse: [self swap: location with: oldKey]]
