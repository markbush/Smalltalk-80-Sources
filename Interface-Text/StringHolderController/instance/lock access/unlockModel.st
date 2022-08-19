unlockModel
	"If the receiver is locked, then the model probably is, but should not be, so
	unlock the model."
	isLockingOn ifTrue: [model unlock]
