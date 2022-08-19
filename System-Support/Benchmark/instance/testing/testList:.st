testList: selectorList
	"This message allows you to test a series of benchmarks and record all the results on
	a file or stream."

	fromList _ true.
	self setOutputParameters.
	selectorList do:
		[:selector | self perform: selector.
		 verboseTranscript ifTrue:
			[Transcript show: 'press any mouse button to continue'.
			 Sensor waitButton.
			 Transcript clear; refresh]].
	reporting ifTrue: [self closeOutput: reportStream].
	fromList _ false.

	"Benchmark new testList: #(testLoadInstVar testLoadLiteralIndirect testLoadLiteralNRef testLoadQuickConstant testLoadTempNRef)"
