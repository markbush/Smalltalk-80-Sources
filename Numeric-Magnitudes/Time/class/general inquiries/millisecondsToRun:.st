millisecondsToRun: timedBlock
	"Answer with the number of milliseconds timedBlock takes to return its value."

	| initialMilliseconds |
	initialMilliseconds _ self millisecondClockValue.
	timedBlock value.
	^self millisecondClockValue - initialMilliseconds
