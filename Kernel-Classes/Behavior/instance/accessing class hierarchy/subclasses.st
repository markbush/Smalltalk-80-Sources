subclasses
	"Answer the receiver's subclasses.  Return a copy so that callers who
	add or delete subclasses won't get confused."

	subclasses == nil
		ifTrue: [^Set new]
		ifFalse: [^subclasses copy]
