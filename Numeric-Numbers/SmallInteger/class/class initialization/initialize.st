initialize
	"Initialize the digit buffer, and discover the range of
	SmallIntegers on this system."

	| val bits |
	Digitbuffer _ Array new: 32.  "Big enough for 32-bit systems"
	"Discover minVal and maxVal dynamically.  Assume that
	minVal is -2^N and maxVal is (2^N)-1."
	val _ -1.
	bits _ 0.
	[(val subtractOrFail: 1) notNil]
		whileTrue:
			[val _ val + val.
			bits _ bits + 1].
	minVal _ val.
	maxVal _ (val + 1) negated.
	maxBits _ bits.
	maxBytes _ bits + 7 // 8.
	"SmallInteger initialize."
