buildCharacterBlockIn: aParagraph
	| lineIndex runLength lineStop characterBlock done stopCondition |
	"handle nullText"
	(aParagraph numberOfLines = 0 or: [text size = 0])
		ifTrue:	[leftMargin _ (aParagraph leftMarginForDisplayForLine: 1).
				^CharacterBlock
					stringIndex: 1	"like being off end of string"
					character: nil
					topLeft: (leftMargin @
								(aParagraph compositionRectangle) top)
					extent: (0 @ textStyle lineGrid)].

	"find the line"
	lineIndex _ aParagraph lineIndexOfTop: characterPoint y.
	destY _ (aParagraph topAtLineIndex: lineIndex).
	line _ aParagraph lineAt: lineIndex.
	text _ aParagraph textAt: lineIndex.
	rightMargin _ aParagraph rightMarginForDisplay.

	(lineIndex = aParagraph numberOfLines and:
		[(destY + textStyle lineGrid) < characterPoint y])
			ifTrue:	["if beyond lastLine, force search to last character"
					characterPoint x: rightMargin]
			ifFalse:	[characterPoint y < (aParagraph compositionRectangle) top
						ifTrue: ["force search to first line"
								characterPoint _
								(aParagraph compositionRectangle) topLeft].
					characterPoint x > rightMargin
						ifTrue:	[characterPoint x: rightMargin]].
	destX _ leftMargin _ aParagraph leftMarginForDisplayForLine: lineIndex.
	nextLeftMargin_ aParagraph leftMarginForDisplayForLine: lineIndex+1.
	lastIndex _ line first.

	self setStopConditions.		"also sets font"
	runLength _ (text runLengthFor: line first).
	characterIndex ~~ nil
		ifTrue:	[lineStop _ characterIndex	"scanning for index"]
		ifFalse:	[lineStop _ line last].
	(runStopIndex _ lastIndex + (runLength - 1)) > lineStop
		ifTrue:	[runStopIndex _ lineStop].
	lastCharacterExtent _ 0 @ textStyle lineGrid.
	spaceCount _ 0. done  _ false.

	[done]
	whileFalse:
	[stopCondition _
					self scanCharactersFrom: lastIndex
						to: runStopIndex
						in: text string
						rightX: characterPoint x
						stopConditions: stopConditions
						displaying: false.

		"see setStopConditions for stopping conditions for character block 	operations."
	lastCharacterExtent x: (font widthOf: (text at: lastIndex)).
	(self perform: stopCondition)
		ifTrue:	[^CharacterBlock
					stringIndex: lastIndex
					character: lastCharacter
					topLeft: characterPoint
					extent: lastCharacterExtent]]
