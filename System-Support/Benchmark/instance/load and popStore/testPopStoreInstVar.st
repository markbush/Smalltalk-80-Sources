testPopStoreInstVar
	self test: [dummy _ 1. dummy _ 1. dummy _ 1. dummy _ 1. dummy _ 1.
			  dummy _ 1. dummy _ 1. dummy _ 1. dummy _ 1. dummy _ 1.
			  dummy _ 1. dummy _ 1. dummy _ 1. dummy _ 1. dummy _ 1.
			  dummy _ 1. dummy _ 1. dummy _ 1. dummy _ 1. dummy _ 1. nil]
		labeled: 'store into an instance variable, 20 times' repeated: 10000

	"Benchmark new testPopStoreInstVar"
