\\ anInteger
	"Take the receiver modulo the argument.  The result is the remainder rounded
	towards negative infinity, of the receiver divided by the argument.  Fail if the
	argument is 0.  Fail if either the argument or the result is not a SmallInteger or a
	LargePositiveInteger less than 65536.  Optional.  See Object documentation
	whatIsAPrimitive."

	<primitive: 31>
	^super \\ anInteger
