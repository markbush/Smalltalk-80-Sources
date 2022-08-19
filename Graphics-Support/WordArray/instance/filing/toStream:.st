toStream: aStream
	"Store the array of bits onto the Stream, aStream."

	1 to: self size do:
		[:i |
		aStream nextPut: ((self at: i) bitShift: -8).
		aStream nextPut: ((self at: i) bitAnd: 255)]
