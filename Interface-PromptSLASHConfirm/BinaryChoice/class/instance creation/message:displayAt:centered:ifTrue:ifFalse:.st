message: messageString displayAt: aPoint centered: centered ifTrue: trueAlternative ifFalse: falseAlternative
	"Answer an instance of me whose question is messageString.  If the user
	answer is yes, then evaluate trueAlternative.  If the user answer is no,
	evaluate falseAlternative. If centered, a Boolean, is false, display the view of the
	instance at aPoint; otherwise display it with its center at aPoint."

	| newChoice |
	newChoice _ self new initialize.
	newChoice trueAction: trueAlternative.
	newChoice falseAction: falseAlternative.
	BinaryChoiceView openOn: newChoice message: messageString displayAt: aPoint centered: centered
