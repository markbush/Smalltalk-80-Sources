floor
	"Answer the integer nearest the receiver toward negative infinity."

	| truncation |
	truncation _ self truncated.
	self >= 0 ifTrue: [^truncation].
	self = truncation
		ifTrue: [^truncation]
		ifFalse: [^truncation - 1]
