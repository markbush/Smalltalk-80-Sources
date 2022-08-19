wordAt: i
	"Answer the value of the word (2 bytes) starting at index i."

	| j |
	j _ i + i.
	^((self at: j - 1) bitShift: 8) + (self at: j)
