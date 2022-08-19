onePixelBackspace
	"Decrement destX by 1 pixel size."

	| characterWidth |
	characterWidth _ 1.
	lastCharacterExtent x: characterWidth.
	lastIndex _ lastIndex + 1.
	destX _ (destX - characterWidth) max: leftMargin.
	^ false
