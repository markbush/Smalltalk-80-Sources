composeWord: aTextLineInterval in: sourceString beginningAt: xInteger
	"Non-primitive composition of a word -- add up widths of characters, add sum to
	beginning x and answer the resulting x.  Similar to performance of scanning
	primitive, but without stop conditions."

	| character resultX |
	resultX _ xInteger.
	aTextLineInterval do:
		[:i |
		character _ sourceString at: i.
		resultX _ resultX + (self widthOf: character)].
	^resultX
