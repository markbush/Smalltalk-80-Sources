explainGlobal: symbol
	"Is symbol a global variable?"

	| each pool reply classes |
	reply _ Smalltalk at: symbol ifAbsent: [^nil].
	(reply isKindOf: Behavior)
		ifTrue: [^'"is a global variable.  ' , symbol , ' is a class in category ', reply category,
			'."', NewLine, 'Browser newOnClass: ' , symbol , '.'].
	symbol == #Smalltalk ifTrue: [^'"is a global.  Smalltalk is the only instance of SystemDictionary and holds all global variables."'].
	reply class == Dictionary
		ifTrue:
			[classes _ Set new.
			Smalltalk allBehaviorsDo: [:each | (each sharedPools detect: [:pool | pool == reply]
					ifNone: [])
					~~ nil ifTrue: [classes add: each]].
			classes _ classes printString.
			^'"is a global variable.  ' , symbol , ' is a Dictionary.  It is a pool which is used by the following classes' , (classes copyFrom: 4 to: classes size) , '"'].
	^'"is a global variable.  ' , symbol , ' is ' , reply printString , '"'
