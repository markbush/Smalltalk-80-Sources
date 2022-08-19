findLast: aString in: aStream
	"Return the position in the stream of the end of the last occurrence of aString (presumably a snapshot message)"
	| firstChar endPosition position count index lastEnd |
	firstChar _ aString first.
	aStream setToEnd.
	position _ aStream position.
	[endPosition _ position.
	lastEnd == nil and: [(position _ endPosition - 5000 max: 0) < endPosition]]
		whileTrue:
			[aStream position: position.
			count _ endPosition - position.
			[count > 0]
				whileTrue:
					[count _ count - 1.
					aStream next = firstChar
						ifTrue:
							[index _ 2.
							[index <= aString size and: [(aString at: index) = aStream next]]
								whileTrue: [index _ index + 1].
							index > aString size
								ifTrue: [lastEnd _ aStream position]
								ifFalse: [aStream position: endPosition - count]]]].
	^lastEnd
