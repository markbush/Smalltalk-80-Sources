flush
	"Write the current page back onto the file."
	self closed
		ifTrue: [^page]
		ifFalse:
			[self fixEnd.
			page fromFileStream: self.
			^page write]
