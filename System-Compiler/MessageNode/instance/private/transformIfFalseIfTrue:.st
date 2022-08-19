transformIfFalseIfTrue: encoder
	((self checkBlock: (arguments at: 1) as: 'False arg' from: encoder)
		and: [self checkBlock: (arguments at: 2) as: 'True arg' from: encoder])
		ifTrue:
			[selector _ #ifTrue:ifFalse:.
			arguments swap: 1 with: 2.
			^true]
		ifFalse:
			[^false]
