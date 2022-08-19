xSingleQuote
	"string"
	self step.
	buffer reset.
	[hereChar == $'
		and: [aheadChar == $'
				ifTrue: [self step. false]
				ifFalse: [true]]]
		whileFalse:
			[buffer nextPut: self step.
			(hereChar == EndChar and: [source atEnd])
				ifTrue: [^self offEnd: 'Unmatched string quote']].
	self step.
	token _ buffer contents.
	tokenType _ #string
