oopsLeftLimit: newLimit
	"Set newLimit to be the threashold at which the user is to be notified
	that the system is low in nubmer of oops."

	OopsLeftLimit _ newLimit.
	self resetLowSpaceSignal.
	^newLimit
