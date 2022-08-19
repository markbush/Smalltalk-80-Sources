message: messageString displayAt: originPoint ifTrue: trueAlternative
	"Answer an instance of me whose question is messageString.  If the user
	answer is yes, then evaluate trueAlternative.  If the user answer is no,
	do nothing.  Display the view of the instance at originPoint."

	^self
		message: messageString
		displayAt: originPoint
		centered: false
		ifTrue: trueAlternative
		ifFalse: nil
