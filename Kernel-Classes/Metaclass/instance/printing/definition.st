definition
	"Answer with a string that defines me"

	| aStream names |
	aStream _ WriteStream on: (String new: 300).
	self printOn: aStream.
	aStream nextPutAll: '
	instanceVariableNames: '''.
	names _ self instVarNames.
	1 to: names size do: [:i | aStream nextPutAll: (names at: i); space].
	aStream nextPut: $'.
	^ aStream contents
