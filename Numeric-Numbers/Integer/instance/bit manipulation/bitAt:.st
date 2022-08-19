bitAt: i
	"Answer the bit at the ith position."

	^(self bitAnd: (1 bitShift: i - 1)) = 0
		ifTrue: [0]
		ifFalse: [1]
