explainClass: symbol
	"Is symbol a class variable or a pool variable?"

	|  name pool reply classes |
	class == nil ifTrue: [^nil].	  "no class is selected"
	classes _
		((class isKindOf: Metaclass) ifTrue: [class soleInstance] ifFalse: [class])
			withAllSuperclasses.

	"class variables"
	reply _ classes detect: [:each | (each classVarNames
			detect: [:name | symbol = name] ifNone: [])
			~~ nil] ifNone: [].
	reply == nil ifFalse: [^'"is a class variable; defined in class ' , reply printString, '"', NewLine,
		'Smalltalk browseAllCallsOn: (', reply printString, ' classPool associationAt: #', symbol, ').'].

	"pool variables"
	classes do: [:each | (each sharedPools
			detect: [:pool | (pool includesKey: symbol) and: [reply _ pool. true]]
			ifNone: []) ~~ nil].
	reply == nil ifTrue: [(Undeclared includesKey: symbol) ifTrue: [reply _ Undeclared]].
	reply == nil
		ifFalse:
			[classes _ WriteStream on: Array new.
			Smalltalk allBehaviorsDo: [:each |
					(each sharedPools detect: [:pool | pool == reply] ifNone: [])
					~~ nil ifTrue: [classes nextPut: each]].
			"Perhaps not print whole list of classes if too long. (unlikely)"
			^'"is a pool variable from the pool ' , (Smalltalk keyAtValue: reply),
			', which is used by the following classes ' , classes contents printString , '"', NewLine,
			'Smalltalk browseAllCallsOn: (', (Smalltalk keyAtValue: reply) printString,
			' associationAt: #', symbol, ').'].
	^nil
