at: key ifAbsent: aBlock
	"Answer the value at key.  If key is not found, answer the
	result of evaluating aBlock."

	| index |
	index _ self findKey: key ifAbsent: [^aBlock value].
	^(self basicAt: index) value
