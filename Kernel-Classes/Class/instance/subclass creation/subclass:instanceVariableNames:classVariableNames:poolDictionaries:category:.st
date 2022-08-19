subclass: t instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat
	"This is the standard initialization message for creating a new class as a subclass
	of an existing class (the receiver)."

	self isVariable
		ifTrue:
			[self isPointers
				ifTrue: [^self
							variableSubclass: t
							instanceVariableNames: f
							classVariableNames: d
							poolDictionaries: s
							category: cat].
			self isBytes
				ifTrue: [^self
							variableByteSubclass: t
							instanceVariableNames: f
							classVariableNames: d
							poolDictionaries: s
							category: cat].
			^self
				variableWordSubclass: t
				instanceVariableNames: f
				classVariableNames: d
				poolDictionaries: s
				category: cat].
	^self class
		name: t
		inEnvironment: Smalltalk
		subclassOf: self
		instanceVariableNames: f
		variable: false
		words: true
		pointers: true
		classVariableNames: d
		poolDictionaries: s
		category: cat
		comment: nil
		changed: false
