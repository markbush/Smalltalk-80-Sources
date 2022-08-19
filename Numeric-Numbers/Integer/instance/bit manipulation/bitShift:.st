bitShift: anInteger
	"Logical SHIFT the twos-complement representation of the receiver with the
	twos-complement representation of the argument and return the result.
	Shift left if the argument is positive, right if the argument is negative.
	Zeros are shifted in from the right in left shifts.
	The sign bit is extended in right shifts."

	| result abs |
	anInteger >= 0 ifTrue: [^(self
			digitLshift: (anInteger bitAnd: 7)
			bytes: (anInteger bitShift: -3)
			lookfirst: true) truncated].
	abs _ 0 - anInteger.
	result _ (self
				digitRshift: (abs bitAnd: 7)
				bytes: (abs bitShift: -3)
				lookfirst: self digitLength) truncated.
	(self negative and: [self anyBitTo: abs])
		ifTrue: [result _ result - 1].
	^result
