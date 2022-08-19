displayCaretForBlock: aCharacterBlock
	"Show caret at proper place for aCharacterBlock"

	self displayCaretAt: (aCharacterBlock topLeft + (0@textStyle baseline))
