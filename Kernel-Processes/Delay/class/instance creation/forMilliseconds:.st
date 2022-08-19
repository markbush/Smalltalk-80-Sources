forMilliseconds: millisecondCount
	"Answer a new instance that will delay the active process for
	millisecondCount milliseconds when sent the message wait."

	^self new delay: millisecondCount
