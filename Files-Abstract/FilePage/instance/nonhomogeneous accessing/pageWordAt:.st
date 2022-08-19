pageWordAt: aWordIndex
	"Answer the word associated with aWordIndex in the page as a whole,
	ignoring header, data and trailer boundaries"

	^page wordAt: aWordIndex
