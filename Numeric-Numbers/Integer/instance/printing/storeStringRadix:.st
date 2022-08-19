storeStringRadix: radix
	"Answer a String representing the receiver as a base radix integer in Smalltalk syntax (e.g. 8r377)."

	| aStream |
	aStream _ WriteStream on: (String new: 16).
	radix ~= 10 ifTrue:
		[radix printOn: aStream.
		aStream nextPutAll: 'r'].
	self printOn: aStream base: radix.
	^aStream contents
