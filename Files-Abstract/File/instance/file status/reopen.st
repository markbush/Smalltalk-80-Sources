reopen
	"Reopen the receiver by possibly looking it up in a file directory and then opening."

	self sameAsStoredFile
		ifFalse:
			[self reinitialize.
			fileDirectory findOrAdd: self].
	self open
