sortBlock: aBlock
	"Make the argument, aBlock, be the criterion for ordering elements of the
	receiver."

	sortBlock _ aBlock fixTemps.
	"The sortBlock must copy its home context, so as to avoid circularities!"
	"Therefore sortBlocks with side effects may not work right"
	self size > 0 ifTrue: [self reSort]
