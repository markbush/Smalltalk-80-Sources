doubleWordAt: i put: value
	"Set the value of the double word (4 bytes) starting at byte index i."

	| w |
	"Primarily for setting socket #s in Pup headers"
	w _ value truncated.
	self at: i put: (w digitAt: 4).
	self at: i + 1 put: (w digitAt: 3).
	self at: i + 2 put: (w digitAt: 2).
	self at: i + 3 put: (w digitAt: 1)
