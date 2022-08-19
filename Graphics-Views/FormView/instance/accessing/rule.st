rule
	"Answer a number from 0 to 15 that indicates which of the sixteen display rules
	(logical function of two boolean values) is to be used when copying the receiver's
	model (a Form) onto the display screen."

	rule == nil
		ifTrue: [^self defaultRule]
		ifFalse: [^rule]
