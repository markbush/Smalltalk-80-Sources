emitWhile: stack on: strm value: forValue
	"Size code for <A> whileTrue: <B>, or <A> whileFalse: <B>"
	| stmt stmtSize loopSize |
	stmt _ arguments at: 1.
	stmtSize _ sizes at: 1.  "Includes loop-back jump"
	loopSize _ sizes at: 2.
	receiver emitForEvaluatedValue: stack on: strm.
	selector key == #whileTrue:
		ifTrue: [self emitBranch: stmtSize pop: stack on: strm]
		ifFalse: [self emitTrueBranch: stmtSize pop: stack on: strm].
	stmt emitForEvaluatedEffect: stack on: strm.
	self emitJump: 0 - loopSize on: strm.
	forValue ifTrue: [strm nextPut: LdNil. stack push: 1]
