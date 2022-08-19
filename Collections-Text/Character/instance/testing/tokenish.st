tokenish
	"Answer whether the receiver is a valid token-character--letter, digit, or colon."

	^self isLetter or: [self isDigit or: [self = $:]]
