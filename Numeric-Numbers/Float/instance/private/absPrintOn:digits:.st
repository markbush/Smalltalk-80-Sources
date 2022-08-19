absPrintOn: aStream digits: digits
	"Print me using digits significant figures."

	| fuzz x exp q i |
	"x is myself normalized to [1.0, 10.0), exp is my exponent"
	exp _
		self < 1.0
			ifTrue: [(10.0 / self floorLog: 10.0) negated]
			ifFalse: [self floorLog: 10.0].
	x _ self / (10.0 raisedTo: exp).
	fuzz _ 10.0 raisedTo: 1 - digits.
	"round the last digit to be printed"
	x _ 0.5 * fuzz + x.
	x >= 10.0
		ifTrue:
			["check if rounding has unnormalized x"
			x _ x / 10.0.
			exp _ exp + 1].
	(exp < 6 and: [exp > -4])
		ifTrue:
			["decimal notation"
			q _ 0.
			exp < 0 ifTrue: [1 to: 1 - exp do: [:i | aStream nextPut: ('0.0000' at: i)]]]
		ifFalse:
			["scientific notation"
			q _ exp.
			exp _ 0].
	[x >= fuzz]
		whileTrue:
			["use fuzz to track significance"
			i _ x truncated.
			aStream nextPut: (48 + i) asCharacter.
			x _ x - i * 10.0.
			fuzz _ fuzz * 10.0.
			exp _ exp - 1.
			exp = -1 ifTrue: [aStream nextPut: $.]].
	[exp >= -1]
		whileTrue:
			[aStream nextPut: $0.
			exp _ exp - 1.
			exp = -1 ifTrue: [aStream nextPut: $.]].
	q ~= 0
		ifTrue:
			[aStream nextPut: $e.
			q printOn: aStream]
