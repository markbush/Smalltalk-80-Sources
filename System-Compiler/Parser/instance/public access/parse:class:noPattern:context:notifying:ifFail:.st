parse: sourceStream class: class noPattern: noPattern context: ctxt
	notifying: req ifFail: aBlock
	 "Answer with a parse tree.  noPattern is true for doIts (Compiler evaluate)"

	 | meth |
	self init: sourceStream notifying: req failBlock: [^aBlock value].
	encoder _ Encoder new init: class context: ctxt notifying: self.
	failBlock_ aBlock.
	meth _ self method: noPattern context: ctxt.
	encoder _ failBlock _ requestor _ parseNode _ nil. "break cycles & mitigate refct overflow"
	^meth
