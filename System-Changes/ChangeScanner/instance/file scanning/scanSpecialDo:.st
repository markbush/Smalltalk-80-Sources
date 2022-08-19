scanSpecialDo: aBlock
	"Scan a chunk of file beginning with a !.  For now, the only thing I understand is method definitions."
	| class category |
	(class _ self nextClass) notNil ifTrue:
		[(tokenType == #keyword and: [token = 'methodsFor:']) ifTrue:
			[self scanToken.
			tokenType == #string ifTrue:
				[category _ token.
				self scanToken.
				tokenType == #doIt ifTrue:
					[^self scanMethodsClass: class category: category asSymbol do: aBlock]]]].
	"I don't understand what's on the file.  Scan for a blank chunk and hope for the best."
	[self nextChunkStream atEnd] whileFalse: []
