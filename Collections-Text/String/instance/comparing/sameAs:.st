sameAs: aString
	"Answer whether the receiver collates precisely with aString. The collation
	sequence is ascii with case differences ignored."

	^(self compare: aString) = 2
