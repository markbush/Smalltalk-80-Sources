openSwitches: parameters topView: topView at: initialPoint model: aChangeList
	"Define a related group of switches"
	| aSwitchView alignPoint leftBorder |

	alignPoint _ initialPoint.
	leftBorder _ 2.

	parameters do:
		[:args |
			[:label :viewSelector :viewArguments :controllerSelector :controllerArguments :width |
			aSwitchView _ SwitchView new.
			aSwitchView model: aChangeList.
			aSwitchView controller: LockedSwitchController new.
			aSwitchView borderWidthLeft: leftBorder right: 2 top: 2 bottom: 0.
			aSwitchView selector: viewSelector.
			aSwitchView arguments: viewArguments.
			aSwitchView controller selector: controllerSelector.
			aSwitchView controller arguments: controllerArguments.
			aSwitchView window: (0 @ 0 extent: width @ 25).
			aSwitchView label: label asParagraph.
			topView addSubView: aSwitchView
				align: aSwitchView viewport topLeft
				with: alignPoint.
			alignPoint _ aSwitchView viewport topRight.
			leftBorder _ 0.
			] valueWithArguments: args].

	^initialPoint x @ aSwitchView viewport bottom
