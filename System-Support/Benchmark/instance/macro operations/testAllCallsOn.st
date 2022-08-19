testAllCallsOn
	self test:
			[Smalltalk allCallsOn: #printStringRadix:]
		labeled: 'find all calls on #printStringRadix:' repeated: 1

	"Benchmark new testAllCallsOn"
