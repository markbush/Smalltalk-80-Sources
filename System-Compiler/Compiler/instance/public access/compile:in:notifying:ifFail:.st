compile: textOrStream in: aClass notifying: aRequestor ifFail: failBlock
	"Answer with a parse tree whose root is a MethodNode.
	This can then be told to generate code as is done in the calls from Behavior"
	self from: textOrStream
		class: aClass
		context: nil
		notifying: aRequestor.
	^self
		translate: sourceStream
		noPattern: false
		ifFail: failBlock
