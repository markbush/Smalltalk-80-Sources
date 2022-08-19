addInstVarName: aString
	"Add the argument, aString, as one of the receiver's instance variables."
	superclass class
		name: self name
		inEnvironment: Smalltalk
		subclassOf: superclass
		instanceVariableNames: self instanceVariablesString , aString
		variable: self isVariable
		words: self isWords
		pointers: self isPointers
		classVariableNames: self classVariablesString
		poolDictionaries: self sharedPoolsString
		category: self category
		comment: nil
		changed: false
