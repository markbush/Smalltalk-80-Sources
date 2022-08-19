tab
	"Advance destination x according to tab settings in the paragraph's textStyle.  Answer whether the character has crossed the right edge of the composition rectangle of the paragraph.  Scale allows use of same code for display and printing composition"

	destX _ textStyle
				nextTabXFrom: destX leftMargin: leftMargin rightMargin: rightMargin.
	destX > rightMargin ifTrue:	[^self crossedX].
	lastIndex _ lastIndex + 1.
	^false
