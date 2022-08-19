numTemps
	"Answer the number of temporary variables used by the receiver."

	self isQuick
		ifTrue: [^0]
		ifFalse: [^self numTempsField]
