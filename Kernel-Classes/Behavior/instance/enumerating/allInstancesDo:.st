allInstancesDo: aBlock
	"Evaluate the argument, aBlock, for each of the current instances of the receiver."

	| inst next |
	inst _ self someInstance.
	inst == nil
		ifFalse:
			[[next _ inst nextInstance.
			aBlock value: inst.
			next == nil]
				whileFalse: [inst _ next]].
	nil class == self ifTrue: [aBlock value: nil]
