asUppercase
	"Answer a string made up from the receiver whose characters are all uppercase."

	| aStream |
	aStream _ WriteStream on: (String new: self size).
	self do: [:aCharacter | aStream nextPut: aCharacter asUppercase].
	^aStream contents
