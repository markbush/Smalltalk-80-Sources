onePixelBackspace
	"Increment destX by 1"

	destX _ (destX - 1) max: runX.
	lastIndex _ lastIndex + 1.
	^false
