nextNonComment: sourceStream
	"Return the next item from the sourceStream (assumed not atEnd),
	carefully ignoring comments and separators."

	| char sepr |
	sepr _ false.
	[true]
		whileTrue:
			[sourceStream atEnd ifTrue: [^nil].
			char _ sourceStream peek.
			char = $$ ifTrue: [sourceStream next.  ^sourceStream next].	"catch chars/strings"
			char = $' ifTrue: [^String readFrom: sourceStream].
			char = $"
				ifTrue: [sourceStream next; skipTo: $".  sepr _ true]
				ifFalse:
					[char isSeparator
						ifTrue: [sourceStream skipSeparators.  sepr _ true]
						ifFalse: [sepr ifTrue: [^Character space].
								sourceStream next.
								^char]]]
