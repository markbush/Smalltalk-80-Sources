sizeIf: encoder value: forValue
	"Size code for <A> ifTrue: <B> ifFalse: <C>, with some optimizations"
	| thenExpr thenSize elseExpr elseSize noElse noThen |
	thenExpr _ arguments at: 1.
	elseExpr _ arguments at: 2.
	forValue
		ifTrue:
			["Everything is straightforward for value:  <A> bfp-C <B> jmp-end <C>"
			elseSize _ elseExpr sizeForEvaluatedValue: encoder.
			thenSize _ (thenExpr sizeForEvaluatedValue: encoder)
						+ (thenExpr returns
								ifTrue: [0]
								ifFalse: [self sizeJump: elseSize])]
		ifFalse:
			["If value not needed, check for possible shortcuts"
			(noElse _ elseExpr isJust: NodeNil) | (noThen _ thenExpr isJust: NodeNil)
				ifFalse:  "If no shortcuts, then compile for value followed by pop"
					[^ super sizeForEffect: encoder].
			elseSize _ noElse
				ifTrue: [0]
				ifFalse: [elseExpr sizeForEvaluatedEffect: encoder].
			thenSize _ noThen
				ifTrue: [0]
				ifFalse:	[thenExpr sizeForEvaluatedEffect: encoder]].
	sizes _ Array with: thenSize with: elseSize.
	(thenSize=0) & (elseSize=0)  "null conditional"
		ifTrue: [^ receiver sizeForEffect: encoder].
	^ (receiver sizeForValue: encoder)
			+ (thenSize=0
				ifTrue: [2 "BTP is long"]
				ifFalse: [self sizeBranch: thenSize])
			+ thenSize + elseSize
