rule
	"Answer a number from 0 to 15 that indicates which of the sixteen display rules
	is to be used when blting the receiver's model (a DisplayText) onto the display
	screen."

	rule == nil
		ifTrue: [^self defaultRule]
		ifFalse: [^rule]
