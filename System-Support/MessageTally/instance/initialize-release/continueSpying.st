continueSpying
	| myDelay value active |
	myDelay _ Delay forMilliseconds: HowOften.
	active _ true.
	Timer _
		[[active] whileTrue:
			[myDelay wait.
			active ifTrue: [self tally: ObservedProcess suspendedContext]].
		nil] newProcess.
	Timer priority: Processor userInterruptPriority.
		"activate the probe and evaluate the block"
	Timer resume.
	value _ TargetBlock value.
	active _ false.
		"Timer will fire once more, not tally, and terminate itself"
	^value  "return the block's value"
