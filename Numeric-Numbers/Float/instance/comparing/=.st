= aNumber
	"Compare the receiver with the argument and return true if the receiver is
	equal to the argument.  Otherwise return false.  Fail if the argument is not a
	Float.  Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 47>
	^self retry: #= coercing: aNumber
