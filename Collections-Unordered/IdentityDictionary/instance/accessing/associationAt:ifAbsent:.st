associationAt: key ifAbsent: aBlock
	"Answer with an Association consisting of key and my value at that key.
	If key is not found, evaluate aBlock."

	| index |
	index _ self findKey: key ifAbsent: [^aBlock value].
	^Association
		key: (self basicAt: index)
		value: (valueArray at: index)
