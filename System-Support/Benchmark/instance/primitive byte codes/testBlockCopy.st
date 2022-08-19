testBlockCopy
	| tC |
	tC _ thisContext.
	self test: [tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0.
			  tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0.
			  tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0.
			  tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0.
			  tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0. tC blockCopy: 0. nil]
		labeled: 'execute blockCopy: 0, 20 times' repeated: 1000

	"Benchmark new testBlockCopy"
