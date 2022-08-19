newProcessWith: anArray
	"Answer a new process running the code in the receiver.
	The receiver's block arguments are bound to the contents
	of the argument, anArray.  The process is not scheduled."

	^Process
		forContext:
			[self valueWithArguments: anArray.
			Processor terminateActive]
		priority: Processor activePriority
