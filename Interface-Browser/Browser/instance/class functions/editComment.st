editComment
	self changeRequest ifFalse: [^self].
	self textMode: #comment.
	self newProtocolList: nil
