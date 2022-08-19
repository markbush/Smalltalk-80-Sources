basicNew
	"Answer a new instance of the receiver (which is a class) with no indexable
	variables.  Fail if the class is indexable.  Essential.  See Object documentation
	whatIsAPrimitive."

	<primitive: 70>
	self isVariable ifTrue: [^self basicNew: 0].
	self primitiveFailed
