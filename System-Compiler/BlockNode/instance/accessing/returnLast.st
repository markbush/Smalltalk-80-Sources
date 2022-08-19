returnLast
	self returns
		ifFalse:
			[returns _ true.
			statements at: statements size put: statements last asReturnNode]
