flags
	"Answer the 3-bit number that indicates the number of arguments
	the receiver takes and whether it is associated with a primitive."

	^(self header bitShift: -12) bitAnd: 7
