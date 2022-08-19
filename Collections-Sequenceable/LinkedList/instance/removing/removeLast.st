removeLast
	"Remove the receiver's last element.  If the receiver is empty, cause an error;
	otherwise answer the removed element.  Using addLast:/removeLast causes the
	receiver to behave as a stack; using addFirst:/removeLast causes the receiver to
	behave as a queue."

	| oldLink aLink |
	self emptyCheck.
	oldLink _ lastLink.
	firstLink == lastLink
		ifTrue: [firstLink _ nil. lastLink _ nil]
		ifFalse: [aLink _ firstLink.
				[aLink nextLink == oldLink] whileFalse:
					[aLink _ aLink nextLink].
				 aLink nextLink: nil.
				 lastLink _ aLink].
	oldLink nextLink: nil.
	^oldLink
