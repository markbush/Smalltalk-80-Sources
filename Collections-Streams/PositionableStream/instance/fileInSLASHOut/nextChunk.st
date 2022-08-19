nextChunk
	"Answer the contents of the receiver, up to the next terminator character, with
	double terminators ignored."

	| aStream char terminator |
	terminator _ $!.
	aStream _ WriteStream on: (String new: 200).
	self skipSeparators.
	[(char _ self next)==nil]
		whileFalse:
			[char == terminator
				ifTrue: [(self peekFor: terminator)
						ifTrue: ["doubled terminator"
							aStream nextPut: char]
						ifFalse: [^aStream contents]]
				ifFalse: [aStream nextPut: char]].
	^aStream contents
