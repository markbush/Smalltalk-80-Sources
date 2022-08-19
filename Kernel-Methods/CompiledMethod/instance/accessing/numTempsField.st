numTempsField
	"Answer the 5-bit number that indicates the number of temporary
	variables the receiver uses."

	^self header // 128 bitAnd: 31
