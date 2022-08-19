pcRange
	"Answer the indices in the source code for the method corresponding
	to the selected context's program counter value."

	| i methodNode pc end |
	(HighlightPC and: [context ~~ nil])
		ifFalse: [^1 to: 0].
	(sourceMap == nil or: [sourceMap size = 0])
		 ifTrue: [^1 to: 0].
	pc_ context pc -
		((context == processHandle topContext and: [processHandle interrupted])
			ifTrue: [1]
			ifFalse: [2]).
	i _ sourceMap indexForInserting: (Association key: pc value: nil).
	i < 1 ifTrue: [^1 to: 0].
	i > sourceMap size
		ifTrue:
			[end _ sourceMap inject: 0 into:
				[:prev :this | prev max: this value last].
			^ end+1 to: end].
	^(sourceMap at: i) value
