<= anInteger
	"Compare the receiver with the argument and return true if the receiver is less
	than or equal to the argument.  Otherwise return false.  Fail if the argument is
	not a SmallInteger or a LargePositiveInteger less than 65536.  Optional.  See
	Object documentation whatIsAPrimitive."

	<primitive: 25>
	^super <= anInteger
