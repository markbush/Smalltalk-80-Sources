subclass: t otherSupers: others instanceVariableNames: f classVariableNames: d category: cat
	"This is the standard initialization message for creating a new class as a subclass
	of an existing class (the receiver)."

	self isVariable
		ifTrue:
			[self isPointers
				ifTrue: [^self
							variableSubclass: t
							instanceVariableNames: f
							classVariableNames: d
							poolDictionaries: ''
							category: cat].
			self isBytes
				ifTrue: [^self
							variableByteSubclass: t
							instanceVariableNames: f
							classVariableNames: d
							poolDictionaries: ''
							category: cat].
			^self
				variableWordSubclass: t
				instanceVariableNames: f
				classVariableNames: d
				poolDictionaries: ''
				category: cat].
	^self class
		name: t
		inEnvironment: Smalltalk
		subclassOf: self and: others
		instanceVariableNames: f
		variable: false
		words: true
		pointers: true
		classVariableNames: d
		poolDictionaries: ''
		category: cat
		comment: nil
		changed: false
