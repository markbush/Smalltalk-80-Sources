addSubclass: aSubclass
	"Make the argument, aSubclass, be one of the subclasses of the receiver."

	(aSubclass superclasses includes: self)
		ifTrue: [subclasses == nil
					ifTrue:	[subclasses _ Set with: aSubclass]
					ifFalse:	[subclasses add: aSubclass]]
		ifFalse: [self error: aSubclass name , ' is not my subclass']
