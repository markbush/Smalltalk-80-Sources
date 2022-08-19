nextSignedInteger
	"Answer the next two bytes from the receiver as a signed Integer."

	| returnValue |
	self atEnd ifTrue: [^false].
	returnValue _ self next asInteger.
	self atEnd ifTrue: [^false].
	(returnValue _ returnValue * 256 + self next asInteger) highBit = 16
		ifTrue:	[^returnValue - 65536	"16-bit negative 0"]
		ifFalse:	[^returnValue].
