includes: anObject
	^(self basicAt: (self findElementOrNil: anObject)) ~~ nil
