testLoadQuickConstant
	self test: [1 == 1. 1 == 1. 1 == 1. 1 == 1. 1 == 1.
			  1 == 1. 1 == 1. 1 == 1. 1 == 1. 1 == 1.
			  1 == 1. 1 == 1. 1 == 1. 1 == 1. 1 == 1.
			  1 == 1. 1 == 1. 1 == 1. 1 == 1. 1 == 1. nil]
		labeled: 'load 1, 40 times; send ==, 20 times' repeated: 10000

	"Benchmark new testLoadQuickConstant"
