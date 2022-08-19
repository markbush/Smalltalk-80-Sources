isQuick
	"Answer whether the receiver is a quick return (of self or of an
	instance variable)."

	^self flags between: 5 and: 6
