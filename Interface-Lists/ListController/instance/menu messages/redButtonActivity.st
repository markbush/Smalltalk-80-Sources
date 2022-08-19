redButtonActivity
	| noSelectionMovement oldSelection trialSelection nextSelection |
	noSelectionMovement _ true.
	oldSelection _ view selection.
	[sensor redButtonPressed]
		whileTrue:
			[trialSelection _ view findSelection: sensor cursorPoint.
			trialSelection ~~ nil
				ifTrue:
					[nextSelection _ trialSelection.
					view moveSelectionBox: nextSelection.
					nextSelection ~= oldSelection ifTrue: [noSelectionMovement _ false]]].
	nextSelection ~~ nil & (nextSelection = oldSelection
			ifTrue: [noSelectionMovement]
			ifFalse: [true]) ifTrue: [self changeModelSelection: nextSelection]
