searchForActiveController
	"Find a scheduled controller that wants control and give control to it.  If none
	wants control, then see if the System Menu has been requested."

	| aController |
	activeController _ nil.
	activeControllerProcess _ Processor activeProcess.
	[Processor yield.
	 aController _ scheduledControllers
		detect:
			[:aController |
			aController isControlWanted and:
				[aController ~~ screenController]]
		ifNone:
			[screenController isControlWanted
				ifTrue: [screenController]
				ifFalse: [nil]].
	aController isNil]
		whileTrue.
	self activeController: aController.
	Processor terminateActive
