activeControllerNoTerminate: aController andProcess: aProcess
	"Set aController to be the currently active controller and aProcess to be the
	the process that handles controller scheduling activities in the system.
	This message differs from activeController:andProcess: in that it does not send
	controlTerminate to the currently active controller."


	self inActiveControllerProcess
		ifTrue:
			[aController~~nil
				ifTrue: [(scheduledControllers includes: aController)
							ifTrue: [self promote: aController]
							ifFalse: [self error: 'Old controller not scheduled']].
			activeController _ aController.
			activeController == nil
				ifFalse: [activeController controlInitialize].
			activeControllerProcess _ aProcess.
			activeControllerProcess resume]
		ifFalse:
			[self error: 'New active controller process must be set from old one']
