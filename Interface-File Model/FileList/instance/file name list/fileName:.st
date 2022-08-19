fileName: selection
	"If selection is not nil, it is the name of a file to be viewed"
	self setFileName: selection.
	isReading _ false.
	self changed: #text
