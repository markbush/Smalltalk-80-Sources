transformIfTrue: encoder
	(self transformBoolean: encoder)
		ifTrue:
			[arguments _
				Array
					with: (arguments at: 1)
					with: (BlockNode new
								statements: (Array with: NodeNil)
								returns: false).
			^true]
		ifFalse:
			[^false]
