signal: aSemaphore atMilliseconds: milliseconds
	"Signal the semaphore when the millisecond clock reaches the value of
	the second argument.  The second argument is a byte indexable object at
	least four bytes long (a 32-bit unsigned number with the low order
	8-bits stored in the byte with the lowest index).  Fail if the first
	argument is neither a Semaphore nor nil.  Essential.  See Object
	documentation whatIsAPrimitive."

	<primitive: 100>
	self primitiveFailed
