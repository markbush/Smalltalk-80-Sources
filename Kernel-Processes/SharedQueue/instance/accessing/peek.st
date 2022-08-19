peek
	"Answer the object that was sent through the receiver first and has not yet
	been received by anyone but do not remove it from the receiver. If no object has
	been sent, suspend the requesting process until one is."

	| value |
	accessProtect
		critical: [readPosition >= writePosition
					ifTrue: [readPosition _ 1.
							writePosition _ 1.
							value _ nil]
					ifFalse: [value _ contentsArray at: readPosition]].
	^value
