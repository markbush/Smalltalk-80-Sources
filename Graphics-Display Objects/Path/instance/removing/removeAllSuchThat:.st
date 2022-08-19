removeAllSuchThat: aBlock
	"Evaluate aBlock for each element of the receiver.  Remove each element for
	which aBlock evaluates to true."

	| newCollection |
	newCollection _ collectionOfPoints removeAllSuchThat: aBlock.
	newCollection form: self form.
	^newCollection
