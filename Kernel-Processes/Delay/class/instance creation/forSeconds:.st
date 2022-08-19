forSeconds: secondCount
	"Answer a new instance that will delay the active process for secondCount seconds when sent the message wait."

	^self new delay: (secondCount * 1000) rounded
