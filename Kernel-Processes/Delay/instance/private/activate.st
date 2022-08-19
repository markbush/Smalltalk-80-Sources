activate
	"For the moment, the receiver will be the next Delay to resume the
	reciever's suspended process."

	ActiveDelay _ self.
	TimingSemaphore initSignals.
	Processor signal: TimingSemaphore atTime: resumptionTime
