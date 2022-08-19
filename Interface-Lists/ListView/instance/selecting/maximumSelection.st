maximumSelection
	"Answer which selection is the last possible one."
	topDelimiter == nil
		ifTrue: [^list numberOfLines]
		ifFalse: [^list numberOfLines - 1]
