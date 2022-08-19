perform: aSymbol with: anObject
	"Send the receiver the keyword message indicated by the arguments. The first
	argument is the selector of the message. The other argument is the
	argument of the message to be sent. Invoke messageNotUnderstood: if the
	number of arguments expected by the selector is not one. Optional. See
	documentation in Object metaclass."

	<primitive: 83>
	^self perform: aSymbol withArguments: (Array with: anObject)
