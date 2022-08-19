defaultInterval
	"Answer the number of ticks between sampling."

	Smalltalk frills ifTrue: [^16] ifFalse: [^60]
