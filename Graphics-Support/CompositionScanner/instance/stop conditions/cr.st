cr
	"Answer true.  Sets up values for the text line interval currently being composed."

	line stop: lastIndex.
	spaceX _ destX.
	line paddingWidth: rightMargin - destX.
	^true
