scanLitWord
	"accumulate keywords and asSymbol the result"

	| t |
	[(typeTable at: hereChar asciiValue) = #xLetter]
		whileTrue:
			[t _ token.
			self xLetter.
			token _ t , token].
	token _ token asSymbol
