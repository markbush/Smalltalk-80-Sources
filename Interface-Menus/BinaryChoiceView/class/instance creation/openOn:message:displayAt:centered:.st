openOn: aBinaryChoice message: messageString displayAt: originPoint centered: centered
	"Answer an instance of me that displays aBinaryChoice asking the question
	messageString.  If the argument centered, a Boolean, is false, display the instance
	with top left corner at originPoint;  otherwise, display it with its center at
	originPoint.  If necessary, translate so the view is completely on the screen.
	Do not schedule, rather take control immediately and insist that the user respond."

	| topView messageView switchView savedArea |
	messageView _ DisplayTextView new model: messageString asDisplayText.
	messageView insideColor: Form white.
	messageView controller: NoController new.
	messageView centered.
	switchView _
		self buildSwitchesFor: aBinaryChoice width: messageView window width.
	topView _ self new model: aBinaryChoice.
	topView addSubView: messageView.
	topView addSubView: switchView below: messageView.
	topView
		align: (centered
				ifTrue: [switchView viewport center]
				ifFalse: [topView viewport topLeft])
		with: originPoint.
	topView borderWidth: 2.
	topView translateBy:
		(topView displayBox amountToTranslateWithin: Display boundingBox).
	topView insideColor: Form white.
	savedArea _ Form fromDisplay: topView displayBox.
	topView display.
	topView controller startUp.
	topView release.
	savedArea displayOn: Display at: topView viewport topLeft
