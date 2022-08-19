returnSelfIfNoOther
	self returns
		ifFalse:
			[statements last == NodeSelf ifFalse: [statements add: NodeSelf].
			self returnLast]
