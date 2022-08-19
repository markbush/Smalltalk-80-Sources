printOn: strm indent: level precedence: p
	| parenthesize |
	parenthesize _
		precedence > p or: [p = 3 and: [precedence = 3 "both keywords"]].
	parenthesize ifTrue: [strm nextPutAll: '('].
	self printOn: strm indent: level.
	parenthesize ifTrue: [strm nextPutAll: ')']
