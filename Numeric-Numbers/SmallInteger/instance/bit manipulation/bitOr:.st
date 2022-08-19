bitOr: arg
	"Logical OR the twos-complement representation of the receiver with the
	argument and answer with the result.  Fail if the argument is not a SmallInteger.
	Essential.  No Lookup.  See Object documentation whatIsAPrimitive."

	<primitive: 15>
	^arg bitOr: self
