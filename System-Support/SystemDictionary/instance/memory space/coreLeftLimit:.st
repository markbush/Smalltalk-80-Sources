coreLeftLimit: newLimit
	"Set newLimit to be the threashold at which the user is to be notified
	that the system is low in core space."

	WordsLeftLimit _ newLimit.
	self resetLowSpaceSignal.
	^newLimit
