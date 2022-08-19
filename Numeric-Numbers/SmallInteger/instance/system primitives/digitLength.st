digitLength
	"Answer with the number of indexable fields in the receiver.  This value is the
	same as the largest legal subscript.  Included so that a SmallInteger can behave
	like a LargeInteger."

	| maxSize minValue size |
	(self < 16r100 and: [self > -16r100]) ifTrue: [^1].
	maxSize _ SmallInteger maxBytes.
	maxSize = 2 ifTrue: [^2].  "Make things go fast for 16-bit systems"
	minValue _ -16r100.
	size _ 2.
	[size < maxSize]
		whileTrue:
			[minValue _ minValue bitShift: 8.
			(self <= (-1 - minValue) and: [self > minValue]) ifTrue: [^size].
			size _ size + 1].
	^maxSize
