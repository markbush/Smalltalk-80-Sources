reciprocal
	"Answer 1 divided by the receiver.  Create an error if the
	receiver is 0."

	self = 0
		ifTrue: [^self error: 'zero has no reciprocal']
		ifFalse: [^1 / self]
