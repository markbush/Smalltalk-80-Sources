addDoIt: aChange
	| fileName |
	fileName _ aChange fileName.
	(doItDict at: fileName ifAbsent: [doItDict at: fileName put: OrderedCollection new])
		add: aChange
