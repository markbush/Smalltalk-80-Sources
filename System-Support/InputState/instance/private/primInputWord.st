primInputWord
	"Return the next word from the input buffer and remove the word from the
	buffer. This message should be sent just after the input semaphore
	finished a wait (was sent a signal by an I/O device). Fail of the input
	buffer is empty. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 95>
	^self primitiveFailed
