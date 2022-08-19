testValue
	| block |
	block _ [3+4].
	self test: [block value. block value. block value. block value.
			  block value. block value. block value. block value.
			  block value. block value. block value. block value.
			  block value. block value. block value. block value.
			  block value. block value. block value. block value. nil]
		labeled: 'evaluate the block: (3+4), 20 times' repeated: 1000

	"Benchmark new testValue"
