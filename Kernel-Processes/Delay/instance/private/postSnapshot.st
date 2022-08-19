postSnapshot
	| pendingDelay |
	delayInProgress
		ifTrue:
			[resumptionTime == nil
				ifTrue: [self error: 'uninitialized Delay']
				ifFalse: ["convert from milliseconds since Jan. 1 1901 to local millisecond clock"
						pendingDelay _ resumptionTime - (Time totalSeconds * 1000).
						pendingDelay _ pendingDelay max: 0.
						resumptionTime _ Time millisecondClockValue + pendingDelay]]

		"if false then this delay must be ready and waiting (on AccessProtect) to resume"
