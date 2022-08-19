string: aString onFileNumber: anInteger toFile: aFileStream
	"Store this as the receiver's string if source files exist."

	| position |
	sourceFileNumber _ anInteger.
	filePositionHi _ (position _ aFileStream position) bitShift: -8.
	filePositionLo _ position bitAnd: 255.
	aFileStream nextChunkPut: aString
