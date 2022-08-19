allSubInstancesDo: aBlock
	"Evaluate the argument, aBlock, for each of the current instances of the receiver's
	subclasses."

	self allSubclassesDo: [:sub | sub allInstancesDo: aBlock]
