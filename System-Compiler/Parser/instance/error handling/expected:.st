expected: aString
	"Notify a problem at token 'here'"
	tokenType == #doIt ifTrue: [hereMark _ hereMark + 1].
	hereType == #doIt ifTrue: [hereMark _ hereMark + 1].
	^ self notify: aString , ' expected' at: hereMark
