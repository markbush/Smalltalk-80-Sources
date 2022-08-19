padTo: bsize
	| rem |
	rem _ bsize - ((page dataSize \\ bsize = 0
					ifTrue: [position - page dataBeginning]
					ifFalse: [self position])
					\\ bsize).
	rem = bsize ifTrue: [^0].
	self skip: rem.
	^rem
