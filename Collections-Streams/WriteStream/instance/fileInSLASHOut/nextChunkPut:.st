nextChunkPut: aString
	"Put aString onto self, doubling embedded terminators."

	| index stringSize char terminator |
	terminator _ $!.
	index _ 0.
	stringSize _ aString size.
	[(index _ index + 1) <= stringSize]
		whileTrue:
			[char _ aString at: index.
			self nextPut: char.
			char == terminator ifTrue: ["double imbedded terminator"
				self nextPut: char]].
	self nextPut: terminator
