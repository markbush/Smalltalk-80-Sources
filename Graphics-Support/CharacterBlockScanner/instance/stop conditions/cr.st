cr
	"Answer an instance of CharacterBlock that specifies the current location of the mouse relative to a carriage return stop condition that has just been encountered.  The ParagraphEditor convention is to denote selections by CharacterBlocks, sometimes including the carriage return (cursor is at the end) and sometimes not (cursor is in the middle of the text). "

	((characterIndex ~= nil
		and: [characterIndex > text size])
			or: [(line last = text size)
				and: [(destY + textStyle lineGrid) < characterPoint y]])
		ifTrue:	["When off end of string, give data for next character"
				destY _ destY +  textStyle lineGrid.
				lastCharacter _ nil.
				characterPoint _
					Point
						x: ((text at: lastIndex) = CR
								ifTrue: [leftMargin]
								ifFalse: [nextLeftMargin])
						y: destY.
				lastIndex _ lastIndex + 1.
				lastCharacterExtent x: 0.
				^ true].
		lastCharacter _ CR.
		characterPoint _ destX @ destY.
		lastCharacterExtent x: rightMargin - destX.
		^true
