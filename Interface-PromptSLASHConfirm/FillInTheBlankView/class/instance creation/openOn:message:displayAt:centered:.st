openOn: aFillInTheBlank message: messageString displayAt: originPoint centered: centered
	"Create and schedule an instance of me that displays aFillInTheBlank asking the
	question messageString.  If the argument centered, a Boolean, is false, display the
	instance with top left corner at originPoint;  otherwise, display it with its center at
	originPoint.  Do not schedule, rather take control immediately and insist that
	the user respond."

	| topView messageView answerView |
	messageView _ self buildMessageView: messageString.
	answerView _
		self buildAnswerView: aFillInTheBlank
			frameWidth: messageView window width.
	topView _ StandardSystemView new model: aFillInTheBlank.
	topView addSubView: messageView.
	topView addSubView: answerView below: messageView.
	topView
		align: (centered
				ifTrue: [topView viewport center]
				ifFalse: [topView viewport topLeft])
		with: originPoint.
	topView label: 'Type a response'.
	topView window:
		(0@0 extent: messageView window width @ (messageView window height + 40)).
	topView controller openDisplayAt: originPoint
