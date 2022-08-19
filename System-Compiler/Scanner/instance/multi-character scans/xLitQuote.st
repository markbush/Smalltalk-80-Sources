xLitQuote
	"UniqueStrings and Vectors"
	" #(1 (4 5) 2 3) #ifTrue:ifFalse:"

	| start |
	self step. "litQuote"
	self scanToken.
	tokenType = #leftParenthesis
		ifTrue:
			[start _ mark.
			self scanToken; scanLitVec.
			tokenType == #doIt
				ifTrue: [mark _ start.
						self offEnd: 'Unmatched parenthesis']]
		ifFalse:
			[(#(word keyword colon) includes: tokenType)
				ifTrue: [self scanLitWord]].
	tokenType _ #literal
