compare: s
	| i len endResult u1 u2 mylen |
	mylen _ self size.
	len _ s size.
	mylen < len
		ifTrue:
			[len _ mylen.
			endResult _ 1]
		ifFalse: [endResult _ mylen = len
						ifTrue: [2]
						ifFalse: [3]].
	i _ 0.
	[(i _ i + 1) <= len]
		whileTrue:
			[u1 _ self at: i.
			u2 _ s at: i.
			u1 = u2
				ifFalse:
					[u1 _ u1 asUppercase.
					u2 _ u2 asUppercase.
					u1 = u2 ifFalse:
						[^u1 < u2
							ifTrue: [1]
							ifFalse: [3]]]].
	^endResult
