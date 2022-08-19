addArgument: aValue
	"Add the argument, aValue, as one of the arguments of the message
	the receiver sends to its model."
	arguments _ arguments copyWith: aValue
