isCyclic
	^self size > 3 and: [self first = self last]
