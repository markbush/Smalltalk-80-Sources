transformOr: encoder
	(self transformBoolean: encoder)
		ifTrue:
			[arguments _
				Array
					with: (BlockNode new
								statements: (Array with: NodeTrue)
								returns: false)
					with: (arguments at: 1).
			^true]
		ifFalse:
			[^false]
