digitDiv: arg neg: ng
	"Answer with an array of (quotient, remainder)"

	| quo rem ql d div dh dnh dl qhi qlo i j k l hi lo r3 a t |
	l _ self digitLength - arg digitLength + 1.
	l <= 0 ifTrue: [^Array with: 0 with: self].
	d _ 8 - arg lastDigit highBit.
	rem _
		self	digitLshift: d
			bytes: 0
			lookfirst: false.
	"makes a copy and shifts"
	div _
		arg digitLshift: d
			bytes: 0
			lookfirst: false.
	"shifts so high order word is >=128"
	quo _ Integer new: l neg: ng.
	dl _ div digitLength - 1.
	"Last actual byte of data"
	ql _ l.
	dh _ div digitAt: dl.
	dnh _
		 dl = 1
			ifTrue: [0]
			ifFalse: [div digitAt: dl - 1].
	1 to: ql do:
		[:k |
		"maintain quo*arg+rem=self"
		"Estimate rem/div by dividing the leading to bytes of rem by dh."
		"The estimate is q = qhi*16+qlo, where qhi and qlo are nibbles."
		j _ rem digitLength + 1 - k.
		"r1 _ rem digitAt: j."
		(rem digitAt: j) = dh
			ifTrue: [qhi _ qlo _ 15"i.e. q=255"]
			ifFalse:
				["Compute q = (r1,r2)//dh, t = (r1,r2)\\dh.
				Note that r1,r2 are bytes, not nibbles.
				Be careful not to generate intermediate results exceeding 13 bits."
				"r2 _ (rem digitAt: j - 1)."
				t _ ((rem digitAt: j) bitShift: 4) + ((rem digitAt: j - 1) bitShift: -4).
				qhi _ t // dh.
				t _ (t \\ dh bitShift: 4) + ((rem digitAt: j - 1) bitAnd: 15).
				qlo _ t // dh.
				t _ t \\ dh.
				"Next compute (hi,lo) _ q*dnh"
				hi _ qhi * dnh.
				lo _ qlo * dnh + ((hi bitAnd: 15) bitShift: 4).
				hi _ (hi bitShift: -4) + (lo bitShift: -8).
				lo _ lo bitAnd: 255.
				"Correct overestimate of q.
				Max of 2 iterations through loop -- see Knuth vol. 2"
				r3 _
					j < 3 ifTrue: [0]
						 ifFalse: [rem digitAt: j - 2].
				[(t < hi or: [t = hi and: [r3 < lo]]) and:
						["i.e. (t,r3) < (hi,lo)"
						qlo _ qlo - 1.
						lo _ lo - dnh.
						lo < 0
							ifTrue:
								[hi _ hi - 1.
								lo _ lo + 256].
						hi >= dh]]
					whileTrue: [hi _ hi - dh].
				qlo < 0
					ifTrue:
						[qhi _ qhi - 1.
						qlo _ qlo + 16]].
		"Subtract q*div from rem"
		l _ j - dl.
		a _ 0.
		1 to: div digitLength do:
			[:i |
			hi _ (div digitAt: i) * qhi.
			lo _
				a + (rem digitAt: l)
					- ((hi bitAnd: 15) bitShift: 4)
					- ((div digitAt: i) * qlo).
			rem digitAt: l put: (lo bitAnd: 255).
			a _ (lo bitShift: -8) - (hi bitShift: -4).
			l _ l + 1].
		a < 0
			ifTrue:
				["Add div back into rem, decrease q by 1"
				qlo _ qlo - 1.
				l _ j - dl.
				a _ 0.
				1 to: div digitLength do:
					[:i |
					a _ (a bitShift: -8) + (rem digitAt: l) + (div digitAt: i).
					rem digitAt: l put: (a bitAnd: 255).
					l _ l + 1]].
		quo digitAt: quo digitLength + 1 - k put: (qhi bitShift: 4) + qlo].
	rem _
		rem digitRshift: d
			bytes: 0
			lookfirst: dl.
	^Array with: quo with: rem
