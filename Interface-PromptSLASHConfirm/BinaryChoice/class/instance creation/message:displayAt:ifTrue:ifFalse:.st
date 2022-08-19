message: messageString displayAt: originPoint ifTrue: trueAlternative ifFalse: falseAlternative
	"Answer an instance of me whose question is messageString.  If the user
	answer is yes, then evaluate trueAlternative.  If the user answer is no,
	evaluate falseAlternative.  Display the view of the instance at originPoint."

	^self
		message: messageString
		displayAt: originPoint
		centered: false
		ifTrue: trueAlternative
		ifFalse: falseAlternative
