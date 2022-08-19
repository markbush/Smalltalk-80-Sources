bitShift: arg
	"Answers with a SmallInteger whose value (in twos-complement
	representation) is the receiver's value (in twos-complement representation)
	shifted left by the number of bits indicated by the argument.  Negative
	arguments shift right.  Zeros are shifted in from the right in left shifts.  The sign
	bit is extended in right shifts.  Fail if the result cannot be represented as a
	SmallInteger.  Essential.  No Lookup.  See Object documentation
	whatIsAPrimitive. "

	<primitive: 17>
	^super bitShift: arg
