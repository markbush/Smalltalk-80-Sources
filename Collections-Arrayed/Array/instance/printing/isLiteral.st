isLiteral
	self detect: [:element | element isLiteral not] ifNone: [^true].
	^false
