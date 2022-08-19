removeFirst
	"Remove the first element of the receiver.  If the receiver is empty, create an error
	message."

	| firstObject |
	self emptyCheck.
	firstObject _ self basicAt: firstIndex.
	self basicAt: firstIndex put: nil.
	firstIndex _ firstIndex + 1.
	^firstObject
