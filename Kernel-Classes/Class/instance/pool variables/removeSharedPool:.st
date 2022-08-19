removeSharedPool: aDictionary
	"Remove the pool dictionary, aDictionary, as one of the receiver's pool dictionaries.
	Create an error if the dictionary is not one of the pools."

	| satisfiedSet workingSet aSubclass|
	(self sharedPools includes: aDictionary)
		ifFalse: [^self error: 'the dictionary is not in my pool'].

	"first see if it is declared in a superclass in which case we can remove it."
	(self allSuperclasses select: [:class | class sharedPools includes: aDictionary]) isEmpty
		ifFalse: [sharedPools remove: aDictionary.
				sharedPools isEmpty ifTrue: [sharedPools _ nil].
				^self].

	"second get all the subclasses that reference aDictionary through me rather than a
	superclass that is one of my subclasses."

	workingSet _ self subclasses asOrderedCollection.
	satisfiedSet _ Set new.
	[workingSet isEmpty] whileFalse:
		[aSubclass _ workingSet removeFirst.
		(aSubclass sharedPools includes: aDictionary)
			ifFalse:
				[satisfiedSet add: aSubclass.
				workingSet addAll: aSubclass subclasses]].

	"for each of these, see if they refer to any of the variables in aDictionary because
	if they do, we can not remove the dictionary."
	satisfiedSet add: self.
	satisfiedSet do:
		[:aSubclass |
		aDictionary associationsDo:
			[:aGlobal |
			(aSubclass whichSelectorsReferTo: aGlobal) isEmpty
				ifFalse: [^self error: aGlobal key
								, ' is still used in code of class '
								, aSubclass name]]].
	sharedPools remove: aDictionary.
	sharedPools isEmpty ifTrue: [sharedPools _ nil]
