testPrintHierarchy
	| class |
	class _ InstructionStream.
	self test:
			[class printHierarchy]
		labeled: 'print a class hierarchy' repeated: 10

	"Benchmark new testPrintHierarchy"
