changesAt: changeName add: aChange
	(changeDict at: changeName ifAbsent: [changeDict at: changeName put: OrderedCollection new])
		add: aChange
