new
	"The receiver can only have one instance.  Create it or complain that
	one already exists."

	thisClass == nil
		ifTrue: [^thisClass _ super new]
		ifFalse: [self error: 'A Metaclass should only have one instance!']
