setStandardTests
	"These are all the built-in benchmarks.
	Feel free to change if you add more or think some of these are useless.
	To just execute a few, use testList: directly."

	StandardTests _
			#(testLoadInstVar testLoadTempNRef testLoadTempRef
			testLoadQuickConstant testLoadLiteralNRef testLoadLiteralIndirect
			testPopStoreInstVar testPopStoreTemp
			test3plus4 test3lessThan4 test3times4 test3div4 test16bitArith testLargeIntArith
			testActivationReturn testShortBranch testWhileLoop
			testArrayAt testArrayAtPut testStringAt testStringAtPut testSize
			testPointCreation testStreamNext testStreamNextPut testEQ testClass
			testBlockCopy testValue testCreation testPointX
			testLoadThisContext
			testBasicAt testBasicAtPut testPerform testStringReplace
			testAsFloat testFloatingPointAddition testBitBLT testTextScanning
			testClassOrganizer testPrintDefinition testPrintHierarchy
 			testAllCallsOn testAllImplementors testInspect
			testCompiler testDecompiler
			testKeyboardLookAhead testKeyboardSingle
			testTextDisplay testTextFormatting testTextEditing )
