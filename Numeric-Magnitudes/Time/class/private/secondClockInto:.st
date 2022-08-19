secondClockInto: aByteArray
	"The argument is a byte indexable object of length at least four.  Store
	into the first four bytes of the argument the number of seconds since
	00:00 in the morning of January 1, 1901 (a 32-bit unsigned number).
	The low-order 8-bits are stored in the byte indexed by 1 and the high-
	order 8-bits in the byte indexed 4.  Essential.  See Object documentation
	whatIsAPrimitive. "

	<primitive: 98>
	self primitiveFailed
