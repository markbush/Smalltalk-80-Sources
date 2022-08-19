valueWithArguments: anArray
	"Evaluate the block represented by the receiver.  The argument is an Array
	whose elements are the arguments for the block.  Fail if the length of the Array
	is not the same as the the number of arguments that the block was expecting.
	Fail if the block is already being executed.  Essential.  See Object
	documentation whatIsAPrimitive."

	<primitive: 82>
	nargs = anArray size
		ifTrue: [self valueError]
		ifFalse: [self error: 'The block needs more or fewer arguments defined']
