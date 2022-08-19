select: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument.
	Collect into a new collection like the receiver, only those elements for which
	aBlock evaluates to true.  Answer the new collection."

	| newCollection |
	newCollection _ collectionOfPoints select: aBlock.
	newCollection form: self form.
	^newCollection
