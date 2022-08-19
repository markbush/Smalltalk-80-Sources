selection
	"Answer the text in the paragraph that is currently selected."
	^paragraph text copyFrom: startBlock stringIndex to: stopBlock stringIndex - 1
