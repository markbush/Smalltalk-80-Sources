pageWordAt: aWordIndex put: aWord
	"Set and answer the word associated with aWordIndex in the page as a whole,
	ignoring header, data and trailer boundaries."

	^page wordAt: aWordIndex put: aWord
