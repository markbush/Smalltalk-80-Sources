xDigit
	"form a number"

	tokenType _ #number.
	(aheadChar = EndChar and: [source atEnd
			and:  [source skip: -1. source next ~= EndChar]])
		ifTrue: [source skip: -1 "Read off the end last time"]
		ifFalse: [source skip: -2].
	token _ Number readFrom: source.
	self step; step
