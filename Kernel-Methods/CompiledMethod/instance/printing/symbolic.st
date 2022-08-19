symbolic
	"Answer a String that contains a list of all the byte codes in a method
	with a short description of each."

	| aStream |
	self isQuick
		ifTrue:
			[self isReturnSelf ifTrue: [^'Quick return self'].
			^'Quick return field ' , self returnField printString , ' (0-based)'].
	aStream _ WriteStream on: (String new: 1000).
	self primitive > 0
		ifTrue:
			[aStream nextPutAll: '<primitive: '.
			aStream print: self primitive.
			aStream nextPut: $>.
			aStream cr].
	(InstructionPrinter on: self) printInstructionsOn: aStream.
	^aStream contents
