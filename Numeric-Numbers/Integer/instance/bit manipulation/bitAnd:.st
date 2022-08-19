bitAnd: aNumber
	"Logical AND the twos-complement representation of the receiver with the
	twos-complement representation of the argument and return the result."

	| anInteger |
	anInteger _ aNumber truncated.
	^self
		digitLogic: anInteger
		op: #bitAnd:
		length: (self digitLength max: anInteger digitLength)
