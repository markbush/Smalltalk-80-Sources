testPrintDefinition
	| class |
	class _ Compiler.
	self test:
			[class definition]
		labeled: 'print a class definition' repeated: 20

	"Benchmark new testPrintDefinition"
