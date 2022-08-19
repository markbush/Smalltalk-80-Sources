onePixelSpace
	"Increment destX by 1 pixel size."

	| characterWidth |
	characterWidth _ 1.
	lastCharacterExtent x: characterWidth.
	(destX + characterWidth)  >= characterPoint x
		ifTrue: [^self crossedX].
	lastIndex _ lastIndex + 1.
	destX _ destX + characterWidth.
	^ false
