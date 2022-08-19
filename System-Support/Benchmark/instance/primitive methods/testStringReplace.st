testStringReplace
	| source sink size |
	source _ self longishString copy.
	sink _ source copy.
	size _ sink size.
	self test:
			[sink replaceFrom: 1 to: size with: source startingAt: 1. nil]
		labeled: 'replace characters in a string' repeated: 100

	"Benchmark new testStringReplace"
