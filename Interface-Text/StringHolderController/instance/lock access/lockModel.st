lockModel
	"If the receiver is lock, do so to the receiver's model."
	isLockingOn ifTrue: [model lock]
