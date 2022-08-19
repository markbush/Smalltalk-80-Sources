testStandardToFile: aFileStream
	"This message allows you to test the default series of benchmarks and record all the
	results on the specified file or stream."

	self setStandardTests.
	self new testList: StandardTests toFile: aFileStream

	"Benchmark testStandardToFile: (FileStream fileNamed: 'Smalltalk.timing')"
