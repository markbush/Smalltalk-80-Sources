superclass: aClass
	"Change the receiver's superclass to be aClass."

	(aClass isKindOf: Behavior)
		ifTrue: [superclass _ aClass]
		ifFalse: [self error: 'superclass must be a class-describing object']
