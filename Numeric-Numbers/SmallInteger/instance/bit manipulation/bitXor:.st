bitXor: arg
	"Exclusive OR the twos-complement representation of the receiver with the
	argument and answer with the result.  Fail if the argument is not a
	SmallInteger.  Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 16>
	^arg bitXor: self
