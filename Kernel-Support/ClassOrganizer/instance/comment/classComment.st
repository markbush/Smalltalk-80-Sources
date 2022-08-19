classComment
	"Answer the comment associated with the object that refers to the receiver."

	globalComment == nil ifTrue: [^''].
	^globalComment string
