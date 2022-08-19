blueButtonActivity
	"Determine which item in the blue button pop-up menu is selected.
	If one is selected, then send the corresponding message to the object
	designated as the menu message receiver."

	| index |
	blueButtonMenu ~~ nil
		ifTrue:
			[index _ blueButtonMenu startUpBlueButton.
			index ~= 0
				ifTrue: [self menuMessageReceiver perform:
							(blueButtonMessages at: index)]]
		ifFalse: [super controlActivity]
