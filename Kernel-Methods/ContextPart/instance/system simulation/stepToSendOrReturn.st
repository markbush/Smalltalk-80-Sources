stepToSendOrReturn
	"Simulate the execution of bytecodes until either sending a message
	or returning a value to the receiver (that is, until switching contexts)."

	[self willSend | self willReturn]
		whileFalse: [self step]
