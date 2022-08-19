endOfRun
	"Answer true if scanning has reached the end of the paragraph.  Otherwise set stop conditions (mostly install potential new font) and answer false."

	| runLength |
	lastIndex = text size
	ifTrue:	[line stop: lastIndex.
			spaceX _ destX.
			line paddingWidth: rightMargin - destX.
			^true]
	ifFalse:	[runLength _ (text runLengthFor: (lastIndex _ lastIndex + 1)).
			runStopIndex _ lastIndex + (runLength - 1).
			self setStopConditions.
			^false]
