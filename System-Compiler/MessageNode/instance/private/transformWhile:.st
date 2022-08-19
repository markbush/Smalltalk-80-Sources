transformWhile: encoder
	^(self transformBoolean: encoder)
		and: [self checkBlock: receiver as: 'receiver' from: encoder]
