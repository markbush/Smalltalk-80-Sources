printOn: aStream
	| s args |
	precedence = 1
		ifTrue:
			[aStream nextPutAll: self selector]
		ifFalse:
			[args _ ReadStream on: arguments.
			self selector keywords do:
				[:s |
				aStream nextPutAll: s.
				aStream space; nextPutAll: args next key.
				aStream space]].
	comment == nil
		ifFalse:
			[aStream crtab: 1.
			self printCommentOn: aStream indent: 1.
			aStream cr].
	temporaries size > 0
		ifTrue:
			[aStream crtab: 1.
			aStream nextPutAll: '| '.
			temporaries do:
				[:s | aStream nextPutAll: s key. aStream space].
			aStream nextPut: $|].
	primitive > 0
		ifTrue:
			[aStream crtab: 1.
			aStream nextPutAll: '<primitive: '; print: primitive; nextPutAll: '>'].
	aStream crtab: 1.
	^block printStatementsOn: aStream indent: 1
