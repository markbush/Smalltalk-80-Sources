setToEnd
	"set position to end of File.  logically: self position: self size"

	self reopen.
	(self read: (self file size max: page pageNumber)) isNil
		ifTrue: [self error: 'setToEnd'].
	position _ readLimit
