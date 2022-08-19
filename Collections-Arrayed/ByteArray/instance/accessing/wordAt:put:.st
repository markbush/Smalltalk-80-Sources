wordAt: i put: v
	"Set the value of the word (2 bytes) starting at index i."

	| j |
	j _ i + i.
	self at: j - 1 put: ((v bitShift: -8) bitAnd: 8r377).
	self at: j put: (v bitAnd: 8r377)
