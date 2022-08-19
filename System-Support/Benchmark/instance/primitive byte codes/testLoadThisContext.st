testLoadThisContext
	self test: [thisContext == thisContext. thisContext == thisContext.
			  thisContext == thisContext. thisContext == thisContext.
			  thisContext == thisContext. thisContext == thisContext.
			  thisContext == thisContext. thisContext == thisContext.
			  thisContext == thisContext. thisContext == thisContext. nil]
		labeled: 'load thisContext, 20 times' repeated: 10000

	"Benchmark new testLoadThisContext"
