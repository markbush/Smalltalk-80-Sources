decompileString
	| aStream |
	aStream _ WriteStream on: (String new: 1000).
	self printOn: aStream.
	^aStream contents
