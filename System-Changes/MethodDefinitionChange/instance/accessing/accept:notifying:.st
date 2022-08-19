accept: newText notifying: requestor
	"Check to make sure the current definition is valid"
	| methodNode |
	methodNode _ Compiler new
		compile: newText
		in: (Smalltalk at: className ifAbsent: [^nil])
		notifying: requestor
		ifFail: [^nil].
	methodNode generate: #(0 0 0).
	^self class new text: self text; className: className; selector: methodNode selector; category: category
