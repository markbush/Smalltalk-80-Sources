primInputSemaphore: aSemaphore
	"Install the argument (a Semaphore) as the object to be signalled whenever
	an input event occurs. The semaphore will be signaled once for every
	word placed in the input buffer by an I/O device. Fail if the argument is
	neither a Semaphore nor nil. Essential. See Object whatIsAPrimitive."

	<primitive: 93>
	^self primitiveFailed
