whileFalse
	"Evaluate the receiver once and then repeatedly as long as the value
	returned by the evaluation is false."

	^[self value] whileFalse: []
