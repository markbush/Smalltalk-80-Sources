yellowButtonActivity
	"Determine which item in the yellow button pop-up menu is selected.
	If one is selected, then send the corresponding message to the object
	designated as the menu message receiver."

	| index |
	yellowButtonMenu ~~ nil
		ifTrue:
			[index _ yellowButtonMenu startUpYellowButton.
			index ~= 0
				ifTrue: [self menuMessageReceiver perform:
							(yellowButtonMessages at: index)]]
		ifFalse: [super controlActivity]
