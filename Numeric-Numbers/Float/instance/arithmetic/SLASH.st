/ aNumber
	"Divide the receiver by the argument and return the exact result as a Float.  Fail
	if the argument is not a Float.  Essential.  See Object documentation
	whatIsAPrimitive. "

	<primitive: 50>
	aNumber = 0
		ifTrue: [self error: 'attempt to divide by zero']
		ifFalse: [^self retry: #/ coercing: aNumber]
