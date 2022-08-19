isInfix
	"Answer whether the receiver is an infix message selector."
	^(self at: 1) isLetter not
