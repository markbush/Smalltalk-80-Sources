highBit
	"Answer with the index of the high order bit of the binary representation of this
	number "

	^self lastDigit highBit + (8 * (self digitLength - 1))
