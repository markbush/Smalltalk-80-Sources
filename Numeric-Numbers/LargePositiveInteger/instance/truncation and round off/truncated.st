truncated
	"If I can be represented as a SmallInteger, return the
	converted result.  This message should really be called
	something else, since it is only used internally after
	arithmetic and bit operations, and in a few external
	places that construct LargePositiveIntegers in non-
	standard ways."

	| size partial maxSize |
	size _ self digitLength.
	size = 0 ifTrue: [^0].
	partial _ self digitAt: size.
	partial = 0 ifTrue: [^(self growby: -1) truncated].
	maxSize _ SmallInteger maxBytes.
	(size < maxSize or: [size = maxSize and: [partial <= MaxHi]])
		ifTrue:
			["Convert back to a SmallInteger."
			[(size _ size - 1) > 0]
				whileTrue:
					[partial _ (partial bitShift: 8) + (self digitAt: size)].  "Can't overflow"
			^partial]
