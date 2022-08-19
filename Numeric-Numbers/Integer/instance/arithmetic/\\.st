\\ aNumber
	"Take the receiver modulo the argument and return the result.
	The result is the remainder rounded towards negative infinity, of the receiver
	divided by the argument. The remainder is defined in terms of //.
	The result has the same sign as the argument:
		e.g.  9\\4 = 1,  -9\\4 = 3,  9\\-4 =  -3,  -9\\-4 = -1 "

	^self - (self // aNumber * aNumber)
