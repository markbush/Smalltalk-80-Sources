variableWordSubclass: t instanceVariableNames: f
	classVariableNames: d poolDictionaries: s category: cat
	"This is the standard initialization message for creating a new class as a subclass
	of an existing class (the receiver) in which the subclass is to have indexable
	word-sized nonpointer variables."

	self instSize > 0
		ifTrue: [^self error:
					'cannot make a word subclass of a class with named fields'].
	self isBytes
		ifTrue: [^self error: 'cannot make a word subclass of a class with byte fields'].
	(self isVariable and: [self isPointers])
		ifTrue: [^self error:
					'cannot make a word subclass of a class with pointer fields'].
	^self class name: t
		inEnvironment: Smalltalk
		subclassOf: self
		instanceVariableNames: f
		variable: true
		words: true
		pointers: false
		classVariableNames: d
		poolDictionaries: s
		category: cat
		comment: nil
		changed: false
