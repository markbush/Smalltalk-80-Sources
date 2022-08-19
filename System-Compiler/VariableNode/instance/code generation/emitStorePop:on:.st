emitStorePop: stack on: strm
	(code between: 0 and: 7)
		ifTrue:
			[strm nextPut: ShortStoP + code "short stopop inst"]
		ifFalse:
			[(code between: 16 and: 23)
				ifTrue: [strm nextPut: ShortStoP + 8 + code - 16 "short stopop temp"]
				ifFalse: [self emitLong: StorePop on: strm]].
	stack pop: 1
