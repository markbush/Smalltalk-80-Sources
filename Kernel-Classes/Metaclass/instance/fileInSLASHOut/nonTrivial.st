nonTrivial
	^self instVarNames size > 0 or: [methodDict size > 0 or: [self comment size > 0]]
