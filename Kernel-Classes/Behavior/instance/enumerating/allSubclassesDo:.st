allSubclassesDo: aBlock
	"Evaluate the argument, aBlock, for each of the receiver's subclasses."

	self subclasses do:
		[:cl |
		aBlock value: cl.
		cl allSubclassesDo: aBlock]
