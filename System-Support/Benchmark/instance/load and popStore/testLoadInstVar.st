testLoadInstVar
	dummy _ 1.
	self test: [dummy == dummy. dummy == dummy.
			  dummy == dummy. dummy == dummy.
			  dummy == dummy. dummy == dummy.
			  dummy == dummy. dummy == dummy.
			  dummy == dummy. dummy == dummy. nil]
		labeled: 'load an instance variable, 20 times' repeated: 10000

	"Benchmark new testLoadInstVar"
