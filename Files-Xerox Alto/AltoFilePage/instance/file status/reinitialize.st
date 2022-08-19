reinitialize
	page == nil
		ifTrue: [super reinitialize]
		ifFalse: ["nextp, backp, lnused, numch, pn"
				page atAll: (1 to: 10) put: 0]
