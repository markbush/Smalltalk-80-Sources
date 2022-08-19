xDoubleQuote
	"collect comment"

	| aStream |
	aStream _ WriteStream on: (String new: 32).
	self step.
	[aStream nextPut: self step. hereChar == $"]
		whileFalse:
			[(hereChar = EndChar and: [source atEnd])
				ifTrue: [^self offEnd: 'Unmatched comment quote']].
	self step.
	currentComment == nil
		ifTrue: [currentComment _ OrderedCollection with: aStream contents]
		ifFalse: [currentComment add: aStream contents].
	self scanToken
