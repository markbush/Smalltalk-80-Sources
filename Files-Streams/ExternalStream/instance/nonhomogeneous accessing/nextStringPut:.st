nextStringPut: s
	"Append the string, s, to the receiver."

	| length |
	(length _ s size) < 192
		ifTrue: [self nextPut: length]
		ifFalse:
			[self nextPut: (length // 256 + 192).
			self nextPut: (length \\ 256)].
	s do: [:char | self nextPut: char asciiValue].
	^s
