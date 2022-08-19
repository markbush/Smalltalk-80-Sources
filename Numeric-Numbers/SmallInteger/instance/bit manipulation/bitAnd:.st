bitAnd: arg
	"Logical AND the twos-complement representation of the receiver with the
	argument and answer with the result.  Fail if the argument is not a SmallInteger.
	Essential.  No Lookup.  See Object documentation whatIsAPrimitive."

	<primitive: 14>
	^arg bitAnd: self
