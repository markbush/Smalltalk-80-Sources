last
	"Answer the last element of the receiver.  Create an error if the receiver
	contains no elements."

	self emptyCheck.
	^self at: self size
