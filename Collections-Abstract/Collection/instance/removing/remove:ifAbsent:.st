remove: oldObject ifAbsent: anExceptionBlock
	"Remove oldObject as one of the receiver's elements.  If several of the
	elements are equal to oldObject, only one is removed. If no element is equal to
	oldObject, answer the result of evaluating anExceptionBlock.  Otherwise,
	answer the argument, oldObject.

	SequenceableCollections can not respond to this message."

	self subclassResponsibility
