selectionAsStream
	"Answer a ReadStream on the text in the paragraph that is currently selected."
	^ReadStream
		on: paragraph text asString
		from: startBlock stringIndex
		to: stopBlock stringIndex - 1
