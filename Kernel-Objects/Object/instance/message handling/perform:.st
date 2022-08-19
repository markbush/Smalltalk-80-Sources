perform: aSymbol
	"Send the receiver the unary message indicated by the argument. The argument is
	the selector of the message. Invoke messageNotUnderstood: if the number of
	arguments expected by the selector is not zero. Optional. See documentation
	in Object metaclass."

	<primitive: 83>
	^self perform: aSymbol withArguments: (Array new: 0)
