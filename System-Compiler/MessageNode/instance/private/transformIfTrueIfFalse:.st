transformIfTrueIfFalse: encoder
	^(self checkBlock: (arguments at: 1) as: 'True arg' from: encoder)
		and: [self checkBlock: (arguments at: 2) as: 'False arg' from: encoder]
