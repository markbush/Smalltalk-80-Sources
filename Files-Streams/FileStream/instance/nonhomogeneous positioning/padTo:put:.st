padTo: bsize put: aCharacter
	| rem |
	rem _ bsize - ((page dataSize \\ bsize = 0
					ifTrue: [position - page dataBeginning]
					ifFalse: [self position])
					\\ bsize).
	rem = bsize ifTrue: [^0].
	self next: rem put: aCharacter.
	^rem
