isReturningIf
	^(special between: 3 and: 4)
		and: [arguments first returns and: [arguments last returns]]
