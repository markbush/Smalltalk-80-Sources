next
	"Answer the object that was sent through the receiver first and has not yet
	been received by anyone.  If no object has been sent, suspend the
	requesting process until one is."

	| value |
	readSynch wait.
	accessProtect
		critical: [readPosition = writePosition
					ifTrue:
						[self error: 'Error in SharedQueue synchronization'.
						 value _ nil]
					ifFalse:
						[value _ contentsArray at: readPosition.
						 contentsArray at: readPosition put: nil.
						 readPosition _ readPosition + 1]].
	^value
