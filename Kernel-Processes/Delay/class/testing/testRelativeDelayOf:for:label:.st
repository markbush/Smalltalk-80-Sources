testRelativeDelayOf: delay for: testCount label: label
	| myDelay |
	myDelay _ Delay forMilliseconds: delay.
	[1 to: testCount do:
		[:index |
		myDelay wait.
		Transcript show: label.
		Transcript show: index printString.
		Transcript space]]
		forkAt: Processor userInterruptPriority

	"Transcript cr.
	 Delay testRelativeDelayOf: 1000 for: 10 label: 'A'.
	 Delay testRelativeDelayOf: 1500 for: 10 label: 'B'.
	"
