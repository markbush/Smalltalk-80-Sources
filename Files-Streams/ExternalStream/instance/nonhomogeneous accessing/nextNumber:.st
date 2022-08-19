nextNumber: n
	"Answer the next n bytes as a positive Integer or LargePositiveInteger."

	| s |
	n <= 2
		ifTrue:
			[s _ 0.
			n timesRepeat: [s _ s * 256 + self next].
			^s].
	s _ LargePositiveInteger new: n.
	1 to: n do: [:i | s at: n + 1 - i put: self next].
	"reverse order of significance"
	^s truncated
