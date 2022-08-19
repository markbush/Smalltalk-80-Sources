removeSubclass: aSubclass
	"If the argument, aSubclass, is one of the receiver's subclasses, remove it."
	subclasses == nil ifFalse:
		[subclasses remove: aSubclass ifAbsent: [].
		subclasses isEmpty ifTrue: [subclasses _ nil]]
