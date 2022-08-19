anyBitTo: pos
	"Answer true if any bit from 1 to pos is non-zero, for testing for loss of significant
	bits when shifting right"

	1 to: pos - 1 // 8 do:
		[:i | (self digitAt: i) ~= 0 ifTrue: [^true]].
	^(self digitAt: pos + 7 // 8) anyMask: (#(1 3 7 15 31 63 127 255) at: pos - 1 \\ 8 + 1)
