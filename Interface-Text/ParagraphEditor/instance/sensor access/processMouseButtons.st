processMouseButtons
	"Determine whether the user pressed any mouse button.  For each possible
	button, determine what actions to take."

	sensor redButtonPressed ifTrue: [self processRedButton].
	sensor yellowButtonPressed ifTrue: [self processYellowButton].
	sensor blueButtonPressed ifTrue: [self processBlueButton]
