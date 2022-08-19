variableSubclass: t instanceVariableNames: f
	classVariableNames: d poolDictionaries: s category: cat
	"This is the standard initialization message for creating a new class as a subclass
	of an existing class (the receiver) in which the subclass is to have indexable
	pointer variables."

	self isBits
		ifTrue:
			[^self error:
				'cannot make a pointer subclass of a class with non-pointer fields'].
	^self class name: t
		inEnvironment: Smalltalk
		subclassOf: self
		instanceVariableNames: f
		variable: true
		words: true
		pointers: true
		classVariableNames: d
		poolDictionaries: s
		category: cat
		comment: nil
		changed: false
