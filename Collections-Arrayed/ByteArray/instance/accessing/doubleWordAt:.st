doubleWordAt: i
	"Answer the value of the double word (4 bytes) starting at byte index i."

	| b0 b1 b2 w |
	"Primarily for reading socket #s in Pup headers"
	b0 _ self at: i.
	b1 _ self at: i+1.
	b2 _ self at: i+2.
	w _ self at: i+3.
	"Following sequence minimizes LargeInteger arithmetic for small results."
	b2=0 ifFalse: [w _ (b2 bitShift: 8) + w].
	b1=0 ifFalse: [w _ (b1 bitShift: 16) + w].
	b0=0 ifFalse: [w _ (b0 bitShift: 24) + w].
	^w
