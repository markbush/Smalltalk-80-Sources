scanLitVec
	| s |
	s _ WriteStream on: (Array new: 16).
	[tokenType = #rightParenthesis or: [tokenType = #doIt]]
		whileFalse:
			[tokenType = #leftParenthesis
				ifTrue:
					[self scanToken; scanLitVec]
				ifFalse:
					[tokenType = #word | (tokenType = #keyword)
						ifTrue:
							[self scanLitWord]
						ifFalse:
							[(token == #-
									and: [(typeTable at: hereChar asciiValue) = #xDigit])
								ifTrue:
									[self scanToken.
									token _ token negated]]].
			s nextPut: token.
			self scanToken].
	token _ s contents
