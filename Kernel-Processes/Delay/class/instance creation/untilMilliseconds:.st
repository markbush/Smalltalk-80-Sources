untilMilliseconds: millisecondCount
	"Answer a new instance that will delay the active process until the
	system's millisecond clock value is millisecondCount when sent the
	message wait."

	^self new resumption: millisecondCount
