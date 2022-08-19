expression
	(hereType == #word and: [tokenType == #leftArrow])
		ifTrue: [self assignment.  ^true].
	self primaryExpression ifFalse: [^false].
	(self messagePart: 3 repeat: true)
		ifTrue:
			[hereType == #semicolon ifTrue: [self cascade]].
	^true
