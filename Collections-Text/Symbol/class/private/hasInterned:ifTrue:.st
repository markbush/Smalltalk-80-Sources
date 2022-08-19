hasInterned: aString ifTrue: symBlock
	"Answer with false if aString hasnt been interned (into a Symbol),
	otherwise supply the symbol to symBlock and return true"

	| v i ascii |
	aString size = 1 ifTrue: [(ascii _ (aString at: 1) asciiValue) < 128
			ifTrue:
				[symBlock value: (SingleCharSymbols at: ascii + 1).
				^true]].
	v _ USTable at: aString stringhash \\ USTable size + 1.
	1 to: v size do:
		[:i |
		(v at: i) == nil
			ifFalse: [aString size = (v at: i) size ifTrue: [aString = (v at: i)
						ifTrue:
							[symBlock value: (v at: i).
							^true]]]].
	^false
