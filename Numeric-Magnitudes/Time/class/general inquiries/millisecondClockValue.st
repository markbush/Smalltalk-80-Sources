millisecondClockValue
	"Answer with the number of milliseconds since the millisecond clock was
	last reset or rolled over."

	| milliseconds |
	milliseconds _ LargePositiveInteger new: 4.
	self millisecondClockInto: milliseconds.
	^milliseconds truncated
