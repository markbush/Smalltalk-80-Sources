next
	(position >= readLimit and: [self atEnd])
		ifTrue: [^nil]
		ifFalse: [^collection at: (position _ position + 1)]
