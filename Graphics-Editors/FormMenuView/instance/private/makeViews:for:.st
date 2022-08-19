makeViews: cache for: aSwitch
	| form aSwitchView |
	form _ cache form.
	aSwitchView _ SwitchView new model: aSwitch.
	aSwitchView key: cache value.
	aSwitchView label: form.
	aSwitchView window: (0@0 extent: form extent).
	aSwitchView translateBy: cache offset.
	aSwitchView borderWidth: 1.
	aSwitchView insideColor: Form white.
	self addSubView: aSwitchView.
	^aSwitchView
