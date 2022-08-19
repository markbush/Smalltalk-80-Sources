perform: aSymbol with: firstObject with: secondObject
	"Send the receiver the keyword message indicated by the arguments. The first
	argument is the selector of the message. The other arguments are the
	arguments of the message to be sent. Invoke messageNotUnderstood: if
	the number of arguments expected by the selector is not two. Optional.
	See documentation in Object metaclass."

	<primitive: 83>
	^self perform: aSymbol withArguments: (Array with: firstObject with: secondObject)
