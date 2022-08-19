preSnapshot
	| pendingDelay |
	delayInProgress
		ifTrue:
			[resumptionTime == nil
				ifTrue: [self error: 'uninitialized Delay']
				ifFalse: ["convert from local millisecond clock to milliseconds since Jan. 1 1901"
						pendingDelay _ resumptionTime - Time millisecondClockValue.
						resumptionTime _ Time totalSeconds * 1000 + pendingDelay]]
		ifFalse:
			[self error: 'This Delay is not waiting']
