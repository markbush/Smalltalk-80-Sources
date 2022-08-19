testAsFloat
	self test: [1 asFloat. 1 asFloat. 1 asFloat. 1 asFloat. 1 asFloat.
			  1 asFloat. 1 asFloat. 1 asFloat. 1 asFloat. 1 asFloat.
			  1 asFloat. 1 asFloat. 1 asFloat. 1 asFloat. 1 asFloat.
			  1 asFloat. 1 asFloat. 1 asFloat. 1 asFloat. 1 asFloat. nil]
		labeled: 'convert 1 to floating point, 20 times' repeated: 100

	"Benchmark new testAsFloat"
