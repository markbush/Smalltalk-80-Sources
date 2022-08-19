reactivate
	"Make sure the timer is armed to go off for this delay."

	delayInProgress ifTrue:
		[TimingSemaphore initSignals.
		Processor signal: TimingSemaphore atTime: resumptionTime]

	"if false then the timer has already fired for this delay and it is waiting (on AccessProtect) to resume"
