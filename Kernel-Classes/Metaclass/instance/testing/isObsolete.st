isObsolete
	"Answer whether the receiver is an obsolete metaclass."

	^thisClass == nil or: [thisClass ~~ (Smalltalk at: thisClass name ifAbsent: [nil])]
	"should only be true for obsolete metaclass"
