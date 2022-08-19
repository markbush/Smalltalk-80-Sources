signal: aSemaphore atOopsLeft: numOops wordsLeft: numWords
	"Tell the object memory to signal the Semaphore when either the number
	 of object pointers remaining drops below numOops, or the number of
	words in the object space remaining drops below numWords.  Fail if the
	frist argument is neither a Semaphore nor nil.  Fail if numOops is not a
	16-bit Integer, or if numWords is not a 32-bit LargePositiveInteger.
	Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 116>
	self primitiveFailed
