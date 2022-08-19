countBits
	"Answer the number of on bits (1's) in me."
	| count bitMask |
	count _ 0.
	self do:
		[:word |
		bitMask _ 1.
		word highBit timesRepeat:
			[(word bitAnd: bitMask) ~= 0
				ifTrue: [count _ count + 1]]].
	^count
