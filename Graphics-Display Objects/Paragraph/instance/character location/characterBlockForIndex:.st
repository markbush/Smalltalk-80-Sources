characterBlockForIndex: targetIndex
	"Answer a CharacterBlock for character in the text at targetIndex.  The
	coordinates in the CharacterBlock will be appropriate to the intersection of the
	destinationForm rectangle and the compositionRectangle."

	^CharacterBlockScanner new characterBlockForIndex: targetIndex in: self
