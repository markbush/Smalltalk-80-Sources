checkCharacter: character
	"Answer a character that is within the ascii range of the receiver--either character
	or the last character in the receiver."

	| ascii |
	ascii _ character asciiValue.
	((ascii < minAscii) or: [ascii > maxAscii])
			ifTrue: [^maxAscii asCharacter]
			ifFalse:	[^character]
