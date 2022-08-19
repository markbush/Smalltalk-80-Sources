endOfRun
	"The end of a run in the display case either means that there is actually a change in the style (run code) to be associated with the string or the end of this line has been reached.  A check for any emphasis (underlining, for example) that may run the length of the run is done here before returning to displayLines: to do the next line"

	| runLength lastCharacter|
	lastIndex = line last
		ifTrue: [ "just displaying and at end of line".
				self checkEmphasis. ^true].
	self checkEmphasis.
				runLength _ text runLengthFor: (lastIndex _ lastIndex + 1).
				self setStopConditions.
				runX _ destX.
				destY _ lineY + self fontAscentDelta.		"fontAscent delta".
	(runStopIndex _ lastIndex + (runLength - 1)) > line last
		ifTrue: [runStopIndex _ line last].

	^false
