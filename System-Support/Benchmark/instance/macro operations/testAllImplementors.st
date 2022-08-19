testAllImplementors
	self test:
			[Smalltalk allImplementorsOf: #next]
		labeled: 'find all implementors of #next' repeated: 1

	"Benchmark new testAllImplementors"
