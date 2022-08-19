message: messageString displayAt: aPoint centered: centered action: aBlock initialAnswer: aString
	"Answer an instance of me whose question is messageString.  Once the
	user provides an answer, then evaluate aBlock. If centered, a Boolean, is
	false, display the view of the instance at aPoint; otherwise display it with its center
	at aPoint. "

	| newBlank |
	newBlank _ self new initialize.
	newBlank action: aBlock.
	newBlank contents: aString.
	FillInTheBlankView
		openOn: newBlank
		message: messageString
		displayAt: aPoint
		centered: centered
