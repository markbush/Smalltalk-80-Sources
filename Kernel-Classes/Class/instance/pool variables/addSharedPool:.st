addSharedPool: aDictionary
	"Add the argument, aDictionary, as one of the receiver's pool dictionaries.  Create
	an error if the dictionary is already one of the pools."

	(self sharedPools includes: aDictionary)
		ifTrue: [^self error: 'The dictionary is already in my pool'].
	sharedPools == nil
		ifTrue: [sharedPools _ Set with: aDictionary]
		ifFalse: [sharedPools add: aDictionary]
