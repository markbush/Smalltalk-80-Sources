testAbsoluteDelayOf: delay for: testCount label: label
	| time |
	time _ Delay millisecondClockValue.
	[1 to: testCount do:
		[:index |
		(Delay untilMilliseconds: time + (index * delay)) wait.
		Transcript show: label.
		Transcript show: index printString.
		Transcript space]]
		forkAt: Processor userInterruptPriority

	"Transcript cr.
	 Delay testAbsoluteDelayOf: 1000 for: 10 label: 'A'.
	 Delay testAbsoluteDelayOf: 1500 for: 10 label: 'B'.
	"
