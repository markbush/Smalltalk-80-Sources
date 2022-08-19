asLowercase
	"Answer a Character that is the lower case letter corresponding to the receiver.  If
	the receiver is not an upper case letter, answer the receiver itself."

	8r101 <= value
		ifTrue: [value <= 8r132
					ifTrue: [^Character value: value+8r40]]
