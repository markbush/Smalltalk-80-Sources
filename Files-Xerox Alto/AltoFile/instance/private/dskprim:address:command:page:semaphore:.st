dskprim: diskNumber address: diskAddress command: diskCommand page: buffer semaphore: aSemaphore
	"Transfer a single record (page) to or from the Alto File System.  Fail if
	integer arguments are not 16-bit positive Integers.  Fail if a disk transfer
	 is already in progress.  Fail if the buffer is not large enough or is
	pointer containing.  Fail if the last argument is not a Semaphore.  Xerox
	specific primitive.  See Object documentation what IsAPrimitive.

	diskNumber is 0 or 1,
	diskAddress is the starting Alto disk address (Integer),
	diskCommand is the disk command (usually CCR, CCW, CWW)
	(Integer), buffer is the string containing label and data,
	aSemaphore is signalled when the transfer completes.
	If disk primitive encounters an error, the receiver's instance variable
	named error is set to the DCB status.  This Integer is greater than 0 and
	is
	interpreted by errorString:.  Normally error is set to 0."

	<primitive: 128>
	error _ -1
	"set error when the primitive fails"
