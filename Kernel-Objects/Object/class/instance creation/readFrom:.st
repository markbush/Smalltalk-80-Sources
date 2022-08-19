readFrom: aStream
	"Create an object based on the contents of aStream."

	| object |
	object _ Compiler evaluate: aStream.
	(object isKindOf: self) ifFalse: [self error: self name, ' expected'].
	^object
