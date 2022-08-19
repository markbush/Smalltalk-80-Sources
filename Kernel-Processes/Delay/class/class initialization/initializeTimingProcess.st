initializeTimingProcess
	[[true]
		whileTrue:
			[TimingSemaphore wait.
			ActiveDelay delayInProgress: false.
			AccessProtect wait.
			ActiveDelay resume.
			SuspendedDelays isEmpty
				ifTrue: [ActiveDelay _ nil]
				ifFalse: [SuspendedDelays removeFirst activate].
			AccessProtect signal]]
		forkAt: Processor timingPriority
