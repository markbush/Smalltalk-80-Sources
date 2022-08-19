nextWordFrom: aStream setCharacter: aBlock
	| outStream char |
	outStream _ WriteStream on: (String new: 16).
	[aStream atEnd
		or:
			[char _ aStream next.
			char = Character cr or: [char = Character space]]]
		whileFalse: [outStream nextPut: char].
	aBlock value: char.
	^outStream contents
