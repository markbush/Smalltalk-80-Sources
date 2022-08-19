message: messageString displayAt: originPoint ifFalse: falseAlternative
	"Answer an instance of me whose question is messageString.  If the user
	answer is yes, then do nothing.  If the user answer is no, evaluate falseAlternative.
	Display the view of the instance at originPoint."

	^self
		message: messageString
		displayAt: originPoint
		centered: false
		ifTrue: nil
		ifFalse: falseAlternative
