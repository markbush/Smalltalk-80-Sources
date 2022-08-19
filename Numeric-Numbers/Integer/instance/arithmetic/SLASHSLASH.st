// aNumber
	"Divide the receiver by the argument and return the result.
	Round the result down towards negative infinity to make it a whole integer."

	| q |
	aNumber = 0 ifTrue: [^self error: 'division by 0'].
	self = 0 ifTrue: [^0].
	q _ self quo: aNumber.
	(q negative
		ifTrue: [q * aNumber ~= self]
		ifFalse: [q = 0 and: [self negative ~= aNumber negative]])
		ifTrue: [^q - 1"Truncate towards minus infinity"]
		ifFalse: [^q]
