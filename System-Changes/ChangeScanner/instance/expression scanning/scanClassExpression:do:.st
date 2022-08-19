scanClassExpression: class do: aBlock
	"Scan an expression beginning with a class name.  This might be a class
	definition, a class removal, a class comment change, a class initialization,
	a method removal, or a doIt."

	| firstToken selector newName |
	firstToken _ token.
	self scanToken.
	firstToken = 'removeSelector:'
		ifTrue:
			[(tokenType == #literal and: [token isKindOf: Symbol]) ifTrue:
				[selector _ token.
				self scanToken.
				^aBlock value: (MethodOtherChange new className: class; selector: selector; type: #remove)]].
	firstToken = 'rename:'
		ifTrue:
			[(tokenType == #literal and: [token isKindOf: Symbol]) ifTrue:
				[newName _ token.
				self scanToken.
				aBlock value: (ClassOtherChange new className: class; type: #rename).
				^aBlock value: (ClassOtherChange new className: newName; type: 'rename to' asSymbol)]].
	firstToken = 'comment:'
		ifTrue:
			[tokenType == #string
				ifTrue:
					[self scanToken.
					^aBlock value: (ClassCommentChange new className: class)]].
	(#('subclass:' 'variableSubclass:' 'variableByteSubclass:' 'variableWordSubclass:') includes: firstToken)
		ifTrue:
			[^self scanClassDefinition: firstToken className: class do: aBlock].
	firstToken = 'initialize'
		ifTrue:
			[^aBlock value: (ClassOtherChange new className: class; type: #initialize)].
	firstToken = 'removeFromSystem'
		ifTrue:
			[^aBlock value: (ClassOtherChange new className: class; type: #remove)].
	firstToken = 'instanceVariableNames:'
		ifTrue:
			[tokenType == #string
				ifTrue:
					[self scanToken.
					^aBlock value: (ClassOtherChange new className: class; type: 'inst vars for' asSymbol)]].
	^nil
