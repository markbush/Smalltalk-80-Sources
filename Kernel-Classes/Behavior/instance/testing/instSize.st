instSize
	"Answer the number of named instance variables (as opposed to indexed
	variables) of the receiver."

	^format bitAnd: 255
