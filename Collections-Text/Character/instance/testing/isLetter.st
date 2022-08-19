isLetter
	"Answer whether the receiver is a letter."
	^(8r141 <= value and: [value <= 8r172])
		or: [8r101 <= value and: [value <= 8r132]]
