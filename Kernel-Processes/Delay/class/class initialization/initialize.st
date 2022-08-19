initialize
	"Initialize class variables that keep track of active Delays."

	TimingSemaphore _ Semaphore new.
	AccessProtect _ Semaphore forMutualExclusion.
	SuspendedDelays _
		SortedCollection sortBlock:
			[:oldDelay :addedDelay |
			oldDelay resumptionTime <= addedDelay resumptionTime].
	ActiveDelay _ nil.
	self initializeTimingProcess
	"Delay initialize."
