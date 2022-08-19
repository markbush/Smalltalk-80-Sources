digitMultiply: arg neg: ng
	| prod pl carry digit i j k xh xl low high |
	((arg digitAt: 1) = 0 and: [arg digitLength = 1]) ifTrue: [^0].
	pl _ self digitLength + arg digitLength.
	prod _ Integer new: pl neg: ng.
	"prod starts out all zero"
	1 to: self digitLength do:
		[:i |
		(digit _ self digitAt: i) ~= 0
			ifTrue:
				[k _ i.
				carry _ 0.
				xh _ digit bitShift: -4.
				xl _ digit bitAnd: 15.
				"Loop invariant: 0<=carry<=0377, k=i+j-1"
				1 to: arg digitLength do:
					[:j |
					high _ (arg digitAt: j) * xh.
					"Do double-precision multiply in two parts.
					Integers must be at least 13 bits for this to work."
					low _ (arg digitAt: j)
								* xl + ((high bitAnd: 15)
									bitShift: 4) + carry + (prod digitAt: k).
					carry _ (high bitShift: -4) + (low bitShift: -8).
					prod digitAt: k put: (low bitAnd: 255).
					k _ k + 1].
				prod digitAt: k put: carry]].
	(prod digitAt: pl) = 0 ifTrue: [^(prod growby: -1) truncated].
	^prod truncated
