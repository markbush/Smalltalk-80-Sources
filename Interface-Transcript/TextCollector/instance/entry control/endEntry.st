endEntry
	"If the receiver's WriteStream is not empty, then reinitialize it.  Send all
	depends a message that the streaming has changed."
	entryStream isEmpty
		ifFalse:
			[self changed: #appendEntry.
			self beginEntry]
