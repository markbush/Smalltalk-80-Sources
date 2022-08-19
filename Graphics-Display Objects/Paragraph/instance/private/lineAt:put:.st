lineAt: indexInteger put: aTextLineInterval
	"store a line, track last, and grow lines if necessary"

	indexInteger > lastLine ifTrue: [lastLine _ indexInteger].
	lastLine > lines size ifTrue: [lines grow].
	^lines at: indexInteger put: aTextLineInterval
