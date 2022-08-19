arguments: argNodes statements: statementsCollection returns: returnBool from: encoder
	sourceEnd: sourceEnd
	"compile"
	sourceRange  _ sourceEnd to: sourceEnd.
	arguments _ argNodes.
	statements _ statementsCollection size > 0
				ifTrue: [statementsCollection]
				ifFalse: [argNodes size > 0
						ifTrue: [statementsCollection copyWith: arguments last]
						ifFalse: [Array with: NodeNil]].
	returns _ returnBool
