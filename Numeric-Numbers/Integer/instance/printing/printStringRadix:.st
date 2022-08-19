printStringRadix: radix
	"Answer a String representing the receiver as a base radix integer."

	| aStream |
	aStream _ WriteStream on: (String new: 16).
	self printOn: aStream base: radix.
	^aStream contents
