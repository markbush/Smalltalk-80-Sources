makeColorConnections: indexInterval
	| connector button buttonCache aSwitchView |
	connector _ Object new.		"A dummy model for connecting dependents"
	indexInterval do:
		[:index |
		buttonCache _ FormButtons at: index.
		buttonCache initialState = #true
			ifTrue: [button _ OneOnSwitch newOn]
			ifFalse: [button _ OneOnSwitch newOff].
		button onAction: [model changeTool: buttonCache value].
		button connection: connector.
		aSwitchView _ self makeViews: buttonCache for: button.
		aSwitchView highlightForm: BorderForm.
		aSwitchView borderWidthLeft: 1 right: 0 top: 1 bottom: 1.
		aSwitchView controller selector: #turnOn].
	aSwitchView highlightForm: SpecialBorderForm.
	aSwitchView borderWidth: 1.
