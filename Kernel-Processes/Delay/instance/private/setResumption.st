setResumption
	delayInProgress
		ifTrue: [self error: 'This Delay is already waiting']
		ifFalse:
			[delayDuration == nil
				ifTrue: [resumptionTime == nil ifTrue: [self error: 'uninitialized Delay']]
				ifFalse: [resumptionTime _ Time millisecondClockValue + delayDuration].
			delayInProgress _ true]
