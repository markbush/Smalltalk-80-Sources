nextString
	"Read a string from the receiver. The first byte is the length of the string, unless it
	is greater than 192, in which case the first two bytes encode the length."

	| aString char length|
	length _ self next.		"first byte."
	length >= 192 ifTrue: [length _ (length - 192) * 256 + self next].
	aString _ String new: length.
	1 to: length do: [:i | aString at: i put: self next asCharacter].
	^aString
