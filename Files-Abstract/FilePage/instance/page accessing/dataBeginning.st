dataBeginning
	"Answer the index in the receiver for the first element of data-1."

	binary
		ifTrue: [^self headerSize]
		ifFalse: [^0]
