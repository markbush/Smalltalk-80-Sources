> aString
	"Answer true if and only if the receiver collates after aString.  The collation
	sequence is ascii with case differences ignored."

	^(self compare: aString) = 3
