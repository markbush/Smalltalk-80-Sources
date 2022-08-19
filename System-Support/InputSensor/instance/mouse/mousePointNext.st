mousePointNext
	"Answer the next mouse point if red button or tablet is down; false otherwise."
	self redButtonPressed ifTrue: [^self mousePoint].
	^false
