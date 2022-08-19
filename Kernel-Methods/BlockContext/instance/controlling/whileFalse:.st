whileFalse: aBlock
	"Evaluate the argument, aBlock, as long as the value
	of the receiver is false. Ordinarily compiled in-line.
	But could also be done in Smalltalk as follows"

	^self value
		ifFalse:
			[aBlock value.
			self whileFalse: aBlock]
