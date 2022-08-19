endPC
	"Answer the index of the last bytecode."

	(self last between: 120 and: 124) ifTrue: [^self size].
	^self size - 3
