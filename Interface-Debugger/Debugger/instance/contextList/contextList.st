contextList
	shortStack
		ifTrue: [^ processHandle topContext stackOfSize: 9]
		ifFalse: [^ processHandle topContext stack]
