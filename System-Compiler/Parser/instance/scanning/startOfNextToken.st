startOfNextToken
	"return starting position in source of next token"

	hereType == #doIt ifTrue: [^source position + 1 + correctionDelta].
	^hereMark + correctionDelta
