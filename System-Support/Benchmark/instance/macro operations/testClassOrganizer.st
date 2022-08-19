testClassOrganizer
	| class |
	class _ Benchmark.
	self test:
			[class organization changeFromString: class organization printString]
		labeled: 'read and write class organization' repeated: 1

	"Benchmark new testClassOrganizer"
