size: encoder args: nArgs super: supered
	| index |
	self reserve: encoder.
	(supered not and: [code - Send < SendLimit and: [nArgs < 3]])
		ifTrue: [^1]. "short send"
	(supered and: [code < Send])
		ifTrue:
			["super special:"
			code _ self code: (encoder litIndex: key) type: 5].
	index _ code < 256
				ifTrue: [code - Send]
				ifFalse: [code \\ 256].
	(index < 32 and: [nArgs <= 7])
		ifTrue: [^2]. "medium send"
	^3 "long send"
