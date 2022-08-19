fileOutOn: aStream previous: previousChange next: nextChange
	"Default, subclasses may be able to encode runs more compactly"
	self fileOutOn: aStream
