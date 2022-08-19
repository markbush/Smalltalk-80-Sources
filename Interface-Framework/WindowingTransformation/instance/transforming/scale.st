scale
	"Answer a copy of the point that represents the current scale of the receiver."

	scale == nil
		ifTrue: [^1.0 @ 1.0]
		ifFalse: [^scale copy]
