format: textOrStream in: aClass notifying: aRequestor
	"Compile a parse tree from the incoming text, and then print the parse tree to yield the answer, a string containing the original code in standard format."

	| aNode |
	self from: textOrStream
		class: aClass
		context: nil
		notifying: aRequestor.
	aNode _ self format: sourceStream noPattern: false ifFail: [^nil].
	^aNode decompileString
