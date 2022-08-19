fromByteStream: aStream
	"Initialize the array of bits by reading integers from the Stream, aStream."

	| high low |
	1 to: self size do:
		[:i |
		high _ aStream next asInteger.
					"be cautious, it may be a char"
		low _ aStream next asInteger.
		self at: i put: (high bitShift: 8) + low]
