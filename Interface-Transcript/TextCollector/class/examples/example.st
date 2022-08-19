example
	"TextCollectors support WriteStream protocol for appending characters to the
	System Transcript."

	Transcript show: (3+4) printString; cr.
	Transcript nextPutAll: '3+4 ='; space; print: 3+4; cr; endEntry

	"TextCollector example"
