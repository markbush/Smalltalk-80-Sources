collect: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument.  Collect the
	resulting values into a collection that is like the receiver.  Answer the new
	collection."

	| newCollection |
	newCollection _ collectionOfPoints collect: aBlock.
	newCollection form: self form.
	^newCollection
