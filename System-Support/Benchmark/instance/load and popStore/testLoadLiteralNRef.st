testLoadLiteralNRef
	self test: [3 == 3. 3 == 3. 3 == 3. 3 == 3. 3 == 3.
			  3 == 3. 3 == 3. 3 == 3. 3 == 3. 3 == 3. nil]
		labeled: 'load nonRefcounted literal, 20 times' repeated: 10000

	"Benchmark new testLoadLiteralNRef"
