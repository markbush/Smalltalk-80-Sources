onePixelBackspace
	"Decrement destX by 1. "

	destX _ (destX - 1) max: leftMargin.
	lastIndex _ lastIndex + 1.
	^false
