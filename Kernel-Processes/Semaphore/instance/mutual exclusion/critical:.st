critical: mutuallyExcludedBlock
	"Evaluate mutuallyExcludedBlock only if the receiver is not currently in the
	process of running the critical: message.  If the receiver is, evaluate
	mutuallyExcludedBlock after the other critical: message is finished."

	| blockValue |
	self wait.
	blockValue _ mutuallyExcludedBlock value.
	self signal.
	^blockValue
