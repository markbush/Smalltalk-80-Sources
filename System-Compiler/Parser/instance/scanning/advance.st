advance
	| this |
	prevMark _ hereMark.
	prevToken _ "Now means prev size"
		(hereType == #number) | (hereType == #string)
			ifTrue: [mark - prevMark]
			ifFalse: [here size].
	this _ here.
	here _ token.
	hereType _ tokenType.
	hereMark _ mark.
	self scanToken.
	^this
