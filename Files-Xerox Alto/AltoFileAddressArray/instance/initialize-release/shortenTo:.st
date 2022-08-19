shortenTo: newSize
	"Shortens the receiver to be size, newSize (for file shorten).  Create an
	error if newSize is greater than the old size."

	| oldSize short |
	oldSize _ self size.
	newSize > oldSize ifTrue: [^self error: 'invalid extension'].
	newSize < oldSize
		ifTrue:
			[short _ self copyFrom: 1 to: newSize.
			runs _ short runs.
			values _ short values]
