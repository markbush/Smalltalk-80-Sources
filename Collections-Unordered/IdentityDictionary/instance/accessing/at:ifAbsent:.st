at: key ifAbsent: aBlock
	"Answer with the value at key.  If key is not found, evaluate aBlock."

	| index |
	index _ self findKey: key ifAbsent: [^aBlock value].
	^valueArray at: index
