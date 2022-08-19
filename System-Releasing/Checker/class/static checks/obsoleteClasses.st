obsoleteClasses
	"Return a collection of all obsolete classes.
	Smalltalk obsoleteClasses "

	^(Metaclass allInstances select: [:metaclass | metaclass isObsolete])
		collect: [:metaclass | metaclass someInstance]
