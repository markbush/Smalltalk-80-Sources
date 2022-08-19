redButtonActivity
	| selectionMovement oldSelection trialSelection nextSelection |
	selectionMovement _ false.
	oldSelection _ view selection.
	[sensor redButtonPressed]
		whileTrue:
			[trialSelection _ view findSelection: sensor cursorPoint.
			trialSelection ~~ nil
				ifTrue:
					[nextSelection _ trialSelection.
					view moveSelectionBox: nextSelection.
					nextSelection ~= oldSelection ifTrue: [selectionMovement _ true]]].
	nextSelection == nil ifTrue: [^self].
	nextSelection = oldSelection ifTrue:
		[selectionMovement ifTrue: [^self].
		nextSelection _ 0.
		view moveSelectionBox: nextSelection].
	model changeRequest ifFalse:
			[view moveSelectionBox: oldSelection.
			^ view flash].
	view changeModelSelection: nextSelection
