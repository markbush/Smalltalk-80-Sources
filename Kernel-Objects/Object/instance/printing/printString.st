printString
	"Answer a String whose characters are a description of the receiver."

	| aStream |
	aStream _ WriteStream on: (String new: 16).
	self printOn: aStream.
	^aStream contents
