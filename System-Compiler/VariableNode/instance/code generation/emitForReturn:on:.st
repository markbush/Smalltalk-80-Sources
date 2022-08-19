emitForReturn: stack on: strm
	(code >= LdSelf and: [code <= LdNil])
		ifTrue:
			["short returns"
			strm nextPut: EndMethod - 4 + (code - LdSelf).
			stack push: 1 "doesnt seem right"]
		ifFalse:
			[super emitForReturn: stack on: strm]
