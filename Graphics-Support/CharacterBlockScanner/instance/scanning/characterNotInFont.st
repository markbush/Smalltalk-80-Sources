characterNotInFont
	"This does not handle character selection nicely, i.e., illegal characters are a little tricky to select.  Since the end of a run or line is subverted here by actually having the scanner scan a different string in order to manage the illegal character, things are not in an absolutely correct state for the character location code.  If this becomes too odious in use, logic will be added to accurately manage the situation."

	lastCharacterExtent _
		(font widthOf: (font maxAscii + 1) asCharacter) @ textStyle lineGrid.
	^super characterNotInFont
