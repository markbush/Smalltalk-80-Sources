removeKey: key ifAbsent: aBlock
	"Remove key from the receiver.  If key is not in the receiver,
	answer the result of evaluating aBlock.  Otherwise, answer the value associated
	with key."

	| index element |
	index _ self findKey: key ifAbsent: [^aBlock value].
	element _ self basicAt: index.
	self basicAt: index put: nil.
	tally _ tally - 1.
	self fixCollisionsFrom: index.
	^element
