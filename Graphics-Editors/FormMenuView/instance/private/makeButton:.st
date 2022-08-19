makeButton: index
	| button buttonCache aSwitchView|
	buttonCache _ FormButtons at: index.
	button _ Button newOff.
	button onAction: [model changeTool: buttonCache value].
	aSwitchView _ self makeViews: buttonCache for: button.
	aSwitchView controller: IndicatorOnSwitchController new
