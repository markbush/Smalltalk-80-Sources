sourceMap: numLits
	"Answer with a sorted set of associations (pc . range).  Delta is the difference
	between the parsed number of literals (startpc) and the generated number of
	literals."
	| key delta |
	delta _ (numLits - literalStream position) * 2.
	^(sourceRanges keys collect:
		[:key |  Association key: key pc + delta value: (sourceRanges at: key)])
			asSortedCollection
