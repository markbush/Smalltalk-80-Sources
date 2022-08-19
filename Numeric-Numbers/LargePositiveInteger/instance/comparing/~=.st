~= anInteger
	"Compare the receiver with the argument and answer true if the receiver is not
	equal to the argument.  Otherwise answer false.  Fail if the argument is not a
	SmallInteger or a LargePositiveInteger less than 65536.  Optional.  See Object
	documentation whatIsAPrimitive."

	<primitive: 28>
	^super ~= anInteger
