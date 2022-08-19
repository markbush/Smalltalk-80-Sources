backWord: characterStream
	"Backspace over the last word--i.e., cut the last word.  Initiated by ctrl w"

	| startIndex |
	sensor keyboard.		" flush the ctrl-w"
	characterStream isEmpty
		ifFalse:
			[self replaceSelectionWith:
				(Text string: characterStream contents emphasis: emphasisHere).
			startBlock _ stopBlock copy.
			characterStream reset].
	startIndex _ 1 max: startBlock stringIndex - 1.
	[startIndex > 1 and: [(paragraph text at: startIndex - 1) asCharacter tokenish]]
		whileTrue: [startIndex _ startIndex - 1].
	startBlock _ paragraph characterBlockForIndex: startIndex.
	beginTypeInBlock _
		paragraph characterBlockForIndex:
				(beginTypeInBlock stringIndex min: startIndex).
	^false
