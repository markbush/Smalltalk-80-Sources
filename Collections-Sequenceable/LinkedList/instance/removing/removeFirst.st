removeFirst
	"Remove the first element.  If the receiver is empty, cause an error;
	otherwise answer the removed element.  Using the sequence addFirst:/removeFirst
	causes the receiver to behave as a stack; using addLast:/removeFirst causes the
	receiver to behave as a queue."

	| oldLink |
	self emptyCheck.
	oldLink _ firstLink.
	firstLink == lastLink
		ifTrue: [firstLink _ nil. lastLink _ nil]
		ifFalse: [firstLink _ oldLink nextLink].
	oldLink nextLink: nil.
	^oldLink
