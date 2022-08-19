+ aNumber
	"Add the receiver to the argument and return the result as a Float.  Fail if the
	argument is not a Float.  Essential.  See Object documentation
	whatIsAPrimitive. "

	<primitive: 41>
	^self retry: #+ coercing: aNumber
