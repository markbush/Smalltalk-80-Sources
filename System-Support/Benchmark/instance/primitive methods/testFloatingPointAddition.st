testFloatingPointAddition
	| a b |
	a _ 3.1.
	b _ 4.1.
	self test: [a+b. a+b. a+b. a+b. a+b. a+b. a+b. a+b. a+b. a+b.
			  a+b. a+b. a+b. a+b. a+b. a+b. a+b. a+b. a+b. a+b. nil]
		labeled: 'add 3.1 plus 4.1, 20 times' repeated: 100

	"Benchmark new testFloatingPointAddition"
