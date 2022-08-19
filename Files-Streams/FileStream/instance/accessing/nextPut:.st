nextPut: aByte
	| dmax |
	rwmode == nil
		ifTrue: [self readWriteShorten "default mode"].
	(rwmode bitAnd: Write) = 0
		ifTrue: [^self error: 'no writing allowed!'].
	closed ifTrue: [self reopen].
	position < writeLimit
		ifTrue: [^collection at: (position _ position + 1) put: aByte].
	dmax _ page dataMaxEnd.
	writeLimit < dmax
		ifTrue: [writeLimit _ dmax]
		ifFalse:
			[self nextPage isNil ifTrue: [^self error: 'cannot write!!!'].
			position = readLimit ifTrue: [writeLimit _ dmax]].
	^collection at: (position _ position + 1) put: aByte
