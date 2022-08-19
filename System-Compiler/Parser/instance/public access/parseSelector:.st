parseSelector: aString
	"Answer with the selector for this method string"

	^self
		initPattern: aString
		notifying: nil
		return: [:pattern | pattern at: 1]
