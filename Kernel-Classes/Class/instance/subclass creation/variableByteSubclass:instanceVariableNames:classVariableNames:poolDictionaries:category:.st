variableByteSubclass: t instanceVariableNames: f
	classVariableNames: d poolDictionaries: s category: cat
	"This is the standard initialization message for creating a new class as a subclass
	of an existing class (the receiver) in which the subclass is to have indexable
	byte-sized nonpointer variables."

	self instSize > 0
		ifTrue: [^self error: 'cannot make a byte subclass of a class with named fields'].
	(self isVariable and: [self isWords])
		ifTrue: [^self error: 'cannot make a byte subclass of a class with word fields'].
	(self isVariable and: [self isPointers])
		ifTrue: [^self error:
					'cannot make a byte subclass of a class with pointer fields'].
	^self class name: t
		inEnvironment: Smalltalk
		subclassOf: self
		instanceVariableNames: f
		variable: true
		words: false
		pointers: false
		classVariableNames: d
		poolDictionaries: s
		category: cat
		comment: nil
		changed: false
