emitIf: stack on: strm value: forValue
	"Emit code for <A> ifTrue: <B> ifFalse: <C>, with some optimizations"
	| thenExpr thenSize elseExpr elseSize |
	thenSize _ sizes at: 1.
	elseSize _ sizes at: 2.
	thenExpr _ arguments at: 1.
	elseExpr _ arguments at: 2.
	forValue
		ifTrue:
			["Everything is straightforward for value:  <A> bfp-C <B> jmp-end <C>"
			receiver emitForValue: stack on: strm.
			self emitBranch: thenSize pop: stack on: strm.
			thenExpr emitForEvaluatedValue: stack on: strm.
			stack pop: 1.
			thenExpr returns ifFalse: [self emitJump: elseSize on: strm].
			elseExpr emitForEvaluatedValue: stack on: strm]
		ifFalse:
			["If value not needed, check for possible shortcuts"
			(thenSize=0) & (elseSize=0)  "null conditional"
				ifTrue: [^ receiver emitForEffect: stack on: strm].
			(elseSize = 0) | (thenSize = 0)
				ifTrue:
					[receiver emitForValue: stack on: strm.
					(elseSize = 0)
						ifTrue:
							["Shortcut for ifTrue: only:  <A> bfp-end <B>"
							self emitBranch: thenSize pop: stack on: strm.
							thenExpr emitForEvaluatedEffect: stack on: strm]
						ifFalse:
							["Shortcut for ifFalse: only  <A> btp-end <C>"
							self emitTrueBranch: elseSize pop: stack on: strm.
							elseExpr emitForEvaluatedEffect: stack on: strm]]
				ifFalse:
					["If no shortcuts, then compile for value followed by pop"
					super emitForEffect: stack on: strm]]
