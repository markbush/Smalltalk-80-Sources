message: messageString
	"Answer an instance of me whose question is messageString.  If the user
	answer is yes, then return true.  If the user answer is no, return false.
	Display the view of the instance at the cursor location."
	| answer |
	self
		message: messageString
		displayAt: Sensor cursorPoint
		centered: true
		ifTrue: [answer _ true]
		ifFalse: [answer _ false].
	^answer
