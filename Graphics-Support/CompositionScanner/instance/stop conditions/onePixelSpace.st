onePixelSpace
	"Increment destX by 1. "

	destX _ destX+1.
	lastIndex _ lastIndex + 1.
	destX > rightMargin ifTrue: 	[^self crossedX].
	^false
