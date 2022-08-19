* aNumber
	"Multiply the receiver by the argument and return the result as a Float.  Fail if
	the argument is not a Float.  Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 49>
	^self retry: #* coercing: aNumber
