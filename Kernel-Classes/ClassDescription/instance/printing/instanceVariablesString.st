instanceVariablesString
	"Answer a string of my instance variable names separated by spaces."
	| aStream names |
	aStream _ WriteStream on: (String new: 100).
	names _ self instVarNames.
	1 to: names size do: [:i | aStream nextPutAll: (names at: i); space].
	^ aStream contents
