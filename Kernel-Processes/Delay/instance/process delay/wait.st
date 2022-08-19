wait
	"Suspend the active process for an amount of time specified when the receiver
	was initialized."

	AccessProtect wait.
	self setResumption.
	ActiveDelay == nil
		ifTrue: [self activate]
		ifFalse: [resumptionTime < ActiveDelay resumptionTime
				ifTrue:
					[SuspendedDelays add: ActiveDelay.
					self activate]
				ifFalse: [SuspendedDelays add: self]].
	AccessProtect signal.
	delaySemaphore wait
