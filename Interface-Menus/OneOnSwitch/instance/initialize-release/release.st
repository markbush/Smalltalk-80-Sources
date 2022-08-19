release
	super release.
	self isConnectionSet ifTrue: [connection removeDependent: self]
