perform: selector withArguments: anArray
	"Send the receiver the keyword message indicated by the arguments. The argument
	selector is the selector of the message. The arguments of the message are the
	elements of anArray. Invoke messageNotUnderstood: if the number of
	arguments expected by the selector is not the same as the length of
	anArray. Essential. See documentation in Object metaclass."

	<primitive: 84>
	self primitiveFailed
