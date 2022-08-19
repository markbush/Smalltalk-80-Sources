atNewIndex: index put: anObject
	self basicAt: index put: anObject.
	tally _ tally + 1.
	self fullCheck
