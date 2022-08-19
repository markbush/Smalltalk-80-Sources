buildSwitchesFor: aBinaryChoice	width: anInteger
	|switchView yesSwitchView noSwitchView|
	switchView _ View new model: aBinaryChoice.
	switchView controller: BinaryChoiceController new.
	yesSwitchView _ SwitchView new model: aBinaryChoice.
	yesSwitchView borderWidthLeft: 0 right: 2 top: 0 bottom: 0.
	yesSwitchView selector: #active.
	yesSwitchView controller selector: #selectTrue.
	yesSwitchView controller cursor: ThumbsUp.
	yesSwitchView label: 'yes' asParagraph.
	yesSwitchView window: (0@0 extent: anInteger//2 @ yesSwitchView window height).
	noSwitchView _ SwitchView new model: aBinaryChoice.
	noSwitchView selector: #active.
	noSwitchView controller selector: #selectFalse.
	noSwitchView controller cursor: ThumbsDown.
	noSwitchView label: 'no' asParagraph.
	noSwitchView window: (0@0 extent: anInteger//2 @ noSwitchView window height).
	switchView addSubView: yesSwitchView.
	switchView addSubView: noSwitchView toRightOf: yesSwitchView.
	switchView borderWidthLeft: 0 right: 0 top: 2 bottom: 0.
	^switchView
