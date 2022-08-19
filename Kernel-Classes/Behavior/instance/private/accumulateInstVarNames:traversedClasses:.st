accumulateInstVarNames: names traversedClasses: classSet
	"accumulate instance variable names in 'names'.  Do this in depth-first,
	  left-to-right order.  This will give the ordering of instance variable names
	  expected by the compiler and other parts of the system."
	self superclasses do:
		[:each | each accumulateInstVarNames: names traversedClasses: classSet].
	(classSet includes: self) ifFalse:
		[names addAll: self instVarNames.
		classSet add: self]
