on: anObject printItems: flag1 oneItem: flag2
		aspect: m1 change: m3 list: m4 menu: m5 initialSelection: m6
	self model: anObject.
	printItems _ flag1.
	oneItem _ flag2.
	partMsg _ m1.
	changeMsg _ m3.
	listMsg _ m4.
	menuMsg _ m5.
	initialSelectionMsg _ m6.
	oneItem ifTrue:
		[self noTopDelimiter noBottomDelimiter.
		initialSelectionMsg == nil
			ifTrue: [self error: 'initialSelection must be specified for oneItem mode']].
	self list: self getList
