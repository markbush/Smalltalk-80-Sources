release
	"Set the receiver's status to closed, if it is not already, and do not allow
	any further reading or writing."
	closed
		ifFalse:
			[closed _ true.
			readLimit _ writeLimit _ 0.
			self file release]
