asFileStream
	"Answer a FileStream on the first page of the receiver."

	self open.
	^FileStream on: (self readOrAddPageNumber: 1)
