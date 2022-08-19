digitAt: n
	"Answer the value of an apparent indexable field.
	This is provided for compatibility with LargeInteger."

	 n = 1
		ifTrue:
			["Negate carefully in case I am SmallInteger minVal"
			self < 0
				ifTrue: [^-256 - self bitAnd: 255].
			^self bitAnd: 255]
		ifFalse:
			[self < 0
				ifTrue: [^(-256 - self bitShift: -8) + 1 digitAt: n - 1].
			^(self bitShift: 8 - (n bitShift: 3)) bitAnd: 255]
