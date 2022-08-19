removeInstVarName: aString
	"Remove the argument, aString, as one of the receiver's instance variables."
	| newInstVarString |
	(self instVarNames includes: aString)
		ifFalse: [self error: aString , ' is not one of my instance variables'].
	newInstVarString _ ''.
	(self instVarNames copyWithout: aString) do:
		[:varName | newInstVarString _ newInstVarString , ' ' , varName].
	superclass class
		name: self name
		inEnvironment: Smalltalk
		subclassOf: superclass
		instanceVariableNames: newInstVarString
		variable: self isVariable
		words: self isWords
		pointers: self isPointers
		classVariableNames: self classVariablesString
		poolDictionaries: self sharedPoolsString
		category: self category
		comment: nil
		changed: false
