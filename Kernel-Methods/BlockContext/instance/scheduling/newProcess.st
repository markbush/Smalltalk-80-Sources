newProcess
	"Answer a new process running the code in the receiver.
	The process is not scheduled."

	^Process
		forContext:
			[self value.
			Processor terminateActive]
		priority: Processor activePriority
