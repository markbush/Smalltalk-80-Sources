topAtLineIndex: lineIndex
	"top y of given line"

	^compositionRectangle top + (lineIndex - 1 * textStyle lineGrid)
