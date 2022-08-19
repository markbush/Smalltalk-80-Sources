scanToken
	[(tokenType _ typeTable at: hereChar asciiValue) == #xDelimiter]
		whileTrue: [self step].  "Skip delimiters fast, there almost always is one."
	mark _ source position - 1.
	(tokenType at: 1) = $x "x as first letter"
		ifTrue: [self perform: tokenType "means perform to compute token & type"]
		ifFalse: [token _ self step asSymbol "else just unique the first char"].
	^token
