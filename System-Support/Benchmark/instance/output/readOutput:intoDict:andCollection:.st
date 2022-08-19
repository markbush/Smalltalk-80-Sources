readOutput: aStream intoDict: aDict andCollection: aColl
	"Parse the output file or stream, aStream, putting labels and times in aDict.
	If aColl is non-nil (but rather an ordered collection), also add the labels to it
	in order."

	| leftBracket rightBracket tab space label value |
	leftBracket _ $[.
	rightBracket _ $].
	tab _ $	.
	space _ $ .
	aStream upTo: leftBracket.
	[aStream atEnd] whileFalse:
		[label _ aStream upTo: rightBracket.
		 aColl notNil ifTrue: [aColl add: label].
		 aStream next: 2; upTo: tab.
		 value _ Number readFrom: (ReadStream on: (aStream upTo: space)).
		 aDict at: label put: value.
		 aStream upTo: leftBracket].
	self closeOutput: aStream
