xLetter
	"form a word or keyword"
	| type prefix |
	buffer reset.
	[type _ typeTable at: hereChar asciiValue.
	type == #xLetter or: [type == #xDigit]]
		whileTrue:
			["open code step for speed"
			buffer nextPut: hereChar.
			hereChar _ aheadChar.
			source atEnd
				ifTrue: [aheadChar _ EndChar "doit"]
				ifFalse: [aheadChar _ source next]].
	(type == #period and:
			[tokenType _ typeTable at: aheadChar asciiValue.
			(tokenType == #xLetter) | (tokenType == #xBinary)])
		ifTrue:  "Allow embedded period in selectors"
			[buffer nextPut: self step.
			prefix _ buffer contents.
			self perform: tokenType.
			token _ prefix , token.
			tokenType == #binary ifTrue: [token _ token asSymbol].
			^self].
	type == #colon
		ifTrue:
			[buffer nextPut: self step.
			tokenType _ #keyword]
		ifFalse:
			[tokenType _ #word].
	token _ buffer contents
