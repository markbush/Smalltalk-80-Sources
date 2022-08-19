codeMessage: receiver selector: selector arguments: arguments
	| symbol |
	symbol _ selector key.
	^MessageNode new
		receiver: receiver
		selector: selector
		arguments: arguments
		precedence:
			(symbol isInfix
				ifTrue: [2]
				ifFalse: [symbol isKeyword ifTrue: [3] ifFalse: [1]])
