transformAnd: encoder
	(self transformBoolean: encoder)
		ifTrue:
			[arguments _
				Array
					with: (arguments at: 1)
					with: (BlockNode new
								statements: (Array with: NodeFalse)
								returns: false).
			^true]
		ifFalse:
			[^false]
