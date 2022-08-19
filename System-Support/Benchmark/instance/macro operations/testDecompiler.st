testDecompiler
	| class |
	class _ InputSensor.
	self
		test: [class selectors do:
				[:sel | (Decompiler new
						decompile: sel
						in: class
						method: (class compiledMethodAt: sel)) decompileString]]
		labeled: 'decompile class InputSensor' repeated: 1

	"Benchmark new testDecompiler"
