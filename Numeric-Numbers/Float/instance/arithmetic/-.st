- aNumber
	"Subtract the argument from the receiver and return the result as a Float.  Fail if
	the argument is not a Float.  Essential.  See Object documentation
	whatIsAPrimitive. "

	<primitive: 42>
	^self retry: #- coercing: aNumber
