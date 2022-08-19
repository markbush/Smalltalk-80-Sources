backspace: characterStream
	"Backspace over the last character--i.e., cut the previous character."

	| startIndex |
	sensor keyboard.			"flush character"
	characterStream isEmpty
		ifTrue:
			[startIndex _ 1 max: startBlock stringIndex - 1.
			startBlock _ paragraph characterBlockForIndex: startIndex.
			beginTypeInBlock _
				paragraph characterBlockForIndex:
							(beginTypeInBlock stringIndex min: startIndex)]
		ifFalse: [characterStream skip: -1].
	^false
