abort
	| exitBlock |
	encoder == nil
		ifFalse: [encoder release. encoder _ nil]. "break cycle"
	exitBlock _ failBlock.
	failBlock _ nil.
	^exitBlock value
