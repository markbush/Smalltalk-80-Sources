asLowercase
	"Answer a string made up from the receiver whose characters are all lowercase."

	| aStream |
	aStream _ WriteStream on: (String new: self size).
	self do: [:aCharacter | aStream nextPut: aCharacter asLowercase].
	^aStream contents
