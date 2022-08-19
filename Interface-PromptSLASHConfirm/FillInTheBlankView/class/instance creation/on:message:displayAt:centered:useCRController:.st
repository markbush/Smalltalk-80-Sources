on: aFillInTheBlank message: messageString displayAt: originPoint centered: centered useCRController: useCRController

	| topView messageView answerView |
	messageView _ self buildMessageView: messageString.
	answerView _
		self buildAnswerView: aFillInTheBlank
			frameWidth: messageView window width.
	useCRController ifTrue: [answerView controller: CRFillInTheBlankController new].
	topView _ View new model: aFillInTheBlank.
	topView controller: BinaryChoiceController new.
	topView addSubView: messageView.
	topView addSubView: answerView below: messageView.
	topView align: (centered
			ifTrue: [topView viewport center]
			ifFalse: [topView viewport topLeft])
		with: originPoint.
	topView window:
		(0 @ 0 extent:
			messageView window width @
			(messageView window height + answerView window height)).
	topView translateBy:
		(topView displayBox amountToTranslateWithin: Display boundingBox).
	^topView
