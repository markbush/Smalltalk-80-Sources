writeContendor: source on: aStream oldText: oldText
	"write out the change"

	| text method endComment code |
	aStream cr; nextChunkPut: '"File: ', source fileName, '"'; cr.
	text _ source text.
	(source isKindOf: MethodDefinitionChange) ifFalse:
		[self tabText: text on: aStream.
		^oldText].
	method _ ReadStream on: text.
	method skipSeparators; skipTo: Character cr; skipSeparators. 	"skip header"
	(method peekFor: $")
		ifTrue:
			[method skipTo: $"; skipSeparators].
	endComment _ method position.
	code _ method nextChunk.
	(self equalWithoutComments: code and: oldText)
		ifTrue:
			[method reset.
			aStream cr; nextPutAll: (method next: endComment);
					nextPutAll: '[SAME CODE AS ABOVE]'; cr]
		ifFalse:
			[aStream cr; nextChunkPut: text; cr].
	^code
