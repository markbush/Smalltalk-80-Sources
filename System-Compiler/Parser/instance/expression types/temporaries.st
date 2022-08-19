temporaries
	"[ '|' (variable) ]  (variable, ..., variable)* "

	| vars |
	(self match: #verticalBar)
		ifFalse: [lastTempMark _ self bareEndOfLastToken. ^#()].	"no temps"
	(self match: #verticalBar)
		ifTrue: [lastTempMark _ self endOfLastToken. ^#()].	"empty temps"
	vars _ OrderedCollection new.
	[hereType == #word]
		whileTrue: [vars addLast: (encoder bindTemp: self advance)].
	(self match: #verticalBar)
		ifTrue: [lastTempMark _ self endOfLastToken. ^vars].
	^self expected: 'Vertical bar'
