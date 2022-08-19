nextChunkStream
	"Return a read stream on the next chunk of the file."

	| chunkStream char terminator |
	terminator _ $!.
	file skipSeparators.
	chunkStream _ ReadWriteStream on: chunkString.
	[file atEnd]
		whileFalse:
			[char _ file next.
			char == terminator
				ifTrue: [(file peekFor: terminator)
						ifTrue: ["doubled terminator"
							chunkStream nextPut: char]
						ifFalse: [chunkStream position: 0.  ^chunkStream]]
				ifFalse: [chunkStream nextPut: char]].
	chunkStream position: 0.  "Sets read limit to current position"
	^chunkStream
