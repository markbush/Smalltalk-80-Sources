isVariable
	"Answer whether the receiver has a variable (indexable) part."

	^(format bitAnd: 4096) ~= 0
