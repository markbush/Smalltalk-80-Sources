bitOr: anInteger
	"Logical OR the twos-complement representation of the receiver with the
	argument and return the result.  Fail if either the argument or the result is not a
	SmallInteger or a LargePositiveInteger less than 65536.  Optional.  See Object
	documentation whatIsAPrimitive."

	<primitive: 35>
	^super bitOr: anInteger
