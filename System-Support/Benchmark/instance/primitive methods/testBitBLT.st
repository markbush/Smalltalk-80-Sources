testBitBLT
	| bLTer |
	bLTer _ self sampleBitBLT.
	self test:
			[bLTer copyBits. bLTer copyBits.
			 bLTer copyBits. bLTer copyBits.
			 bLTer copyBits. bLTer copyBits.
			 bLTer copyBits. bLTer copyBits.
			 bLTer copyBits. bLTer copyBits. nil]
		labeled: 'call bitBLT 10 times' repeated: 10

	"Benchmark new testBitBLT"
