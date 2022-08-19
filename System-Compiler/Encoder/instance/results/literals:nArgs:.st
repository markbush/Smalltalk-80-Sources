literals: primitive nArgs: nArgs
	(primitive > 0 or: [nArgs > 4])
		ifTrue:
			[self litIndex: nArgs * 256 + primitive.
			self litIndex: (self associationForClass)]
		ifFalse:
			[supered ifTrue: [self litIndex: (self associationForClass)]].
	^literalStream contents
