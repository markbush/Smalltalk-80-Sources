asUppercase
	"Answer a Character that is the upper case letter corresponding to the receiver.  If
	the receiver is not a lower case letter, answer the receiver itself."

	8r141 <= value
		ifTrue: [value <= 8r172
					ifTrue: [^Character value: value-8r40]]
