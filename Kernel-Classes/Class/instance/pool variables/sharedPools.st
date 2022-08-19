sharedPools
	"Answer a Set of the pool dictionaries declared in the receiver."

	sharedPools == nil
		ifTrue: [^Set new]
		ifFalse: [^sharedPools]
