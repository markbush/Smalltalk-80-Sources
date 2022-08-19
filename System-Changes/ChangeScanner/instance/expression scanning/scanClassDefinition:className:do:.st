scanClassDefinition: classType className: superName do: aBlock
	"Scan a presumed class definition.  The classType is the first keyword of the class defining message (subclass:, variableSubclass:, etc.)"
	| newName parameters |
	(tokenType == #literal and: [token isKindOf: Symbol]) ifFalse: [^nil].
	newName _ token.
	parameters _ #('instanceVariableNames:' 'classVariableNames:' 'poolDictionaries:' 'category:') collect:
		[:keyword |
		self scanToken.
		(tokenType == #keyword and: [token = keyword]) ifFalse: [^nil].
		self scanToken.
		tokenType == #string ifFalse: [^nil].
		token].
	self scanToken.
	^aBlock value: (ClassDefinitionChange new className: newName; superclassName: superName classType: classType otherParameters: parameters)
