explainTemp: string
	"Is string the name of a temporary variable (or block argument variable)?"

	| tempNames i reply methodNode method |
	selector == nil ifTrue: [^nil].	"no message is selected"
	tempNames _ class parserClass new parseArgsAndTemps: methodText notifying: nil.
	method _ class compiledMethodAt: selector.
	(i _ tempNames findFirst: [:each | each = string]) = 0 ifTrue: [
		(method numTemps > tempNames size and: [Smalltalk frills])
			ifTrue:
				["It must be an undeclared block argument temporary"
				methodNode _ class compilerClass new
							parse: methodText
							in: class
							notifying: nil.
				tempNames _ methodNode tempNames]
			ifFalse: [^nil]].
	(i _ tempNames findFirst: [:each | each = string]) > 0 ifTrue: [i > method numArgs
			ifTrue: [reply _ '"is a temporary variable in this method"']
			ifFalse: [reply _ '"is an argument to this method"']].
	^reply
