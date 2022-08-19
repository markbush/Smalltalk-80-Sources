hash
	"Hash is reimplemented because = is implemented."

	^(self basicAt: 1) bitAnd: 16383		"High bits as an Integer"
