buildColorMenu: extent colorCount: nColors  "BitEditor magnifyWithSmall."
	| menuView index form aSwitchView connector
	button formExtent highlightForm color leftOffset |
	connector _ Object new.
	menuView _ FormMenuView new.
	menuView window: (0@0 corner: extent).
	formExtent _ 30@30 min: extent//(nColors*2+1@2).  "compute this better"
	leftOffset _ extent x-(nColors*2-1*formExtent x)//2.
	highlightForm _ Form extent: formExtent.
	highlightForm borderWidth: 4 mask: Form black.
	1 to: nColors do:
		[:index |
		color _ (nColors=2
			ifTrue: [#(white black)]
			ifFalse: [#(white gray black)]) at: index.
		form _ Form extent: formExtent.
		form fill: form boundingBox mask: (Form perform: color).
		form borderWidth: 5 mask: Form black.
		color = #black ifTrue: [form borderWidth: 5 mask: Form white].
		form borderWidth: 4 mask: Form white.
		button _ color = #black
			ifTrue: [OneOnSwitch newOn]
			ifFalse: [OneOnSwitch newOff].
		button onAction: [menuView model setColor: color].
		button connection: connector.

		aSwitchView _ SwitchView new model: button.
		aSwitchView key: ((nColors=3 ifTrue: ['xvn'] ifFalse: ['xn']) at: index).
		aSwitchView label: form.
		aSwitchView window: (0@0 extent: form extent).
		aSwitchView translateBy: (index-1*2*form width+leftOffset) @ (form height//2).
		aSwitchView insideColor: Form white.
		aSwitchView highlightForm: highlightForm.

		aSwitchView borderWidth: 1.
		aSwitchView controller selector: #turnOn.
		menuView addSubView: aSwitchView].
	^menuView
