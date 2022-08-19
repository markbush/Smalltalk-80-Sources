nextClass
	| class |
	tokenType == #word ifTrue:
		[class _ token.
		self scanToken.
		(tokenType == #word and: [token = 'class'])
			ifTrue:
				[class _ (class, ' ', token) asSymbol.
				self scanToken]
			ifFalse:
				[class _ class asSymbol].
		^class].
	^nil
