on: aProcess at: aContext interrupted: aBoolean
	^ self new
		process: aProcess
		controller: (ScheduledControllers activeControllerProcess == aProcess
					ifTrue: [ScheduledControllers activeController]
					ifFalse: [nil])
		interrupted: aBoolean
		resumeContext: aContext
