noCheckAdd: anObject
	self basicAt: (self findElementOrNil: anObject)
		put: anObject.
	tally _ tally + 1
