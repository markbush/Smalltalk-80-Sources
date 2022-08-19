readFrom: aStream
	"Answer a new instance of RunArray as described on the stream, aStream"

	| size runs values |
	size _ aStream nextWord.
	runs _ Array new: size.
	values _ Array new: size.
	1 to: size do:
		[:x |
		runs at: x put: aStream nextWord.
		values at: x put: aStream nextWord].
	^ self runs: runs values: values
