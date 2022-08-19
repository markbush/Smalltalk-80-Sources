close
	"Close the receiver if it is not already closed."
	closed
		ifFalse:
			[ExternalReferences remove: self ifAbsent: [].
			self release]
