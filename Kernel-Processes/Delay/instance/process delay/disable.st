disable
	AccessProtect wait.
	delayInProgress ifTrue:
		[ActiveDelay == self
			ifTrue: [SuspendedDelays isEmpty
						ifTrue: [Processor signal: nil atTime: 0.
								ActiveDelay _ nil]
						ifFalse: [SuspendedDelays removeFirst activate]]
			ifFalse: [SuspendedDelays remove: self].
		delaySemaphore terminateProcess.
		delayInProgress _ false].
	AccessProtect signal
