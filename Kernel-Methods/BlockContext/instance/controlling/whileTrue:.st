whileTrue: aBlock
	"Evaluate the argument, aBlock, as long as the value
	of the receiver is true. Ordinarily compiled in-line.
	But could also be done in Smalltalk as follows"

	^self value
		ifTrue:
			[aBlock value.
			self whileTrue: aBlock]
