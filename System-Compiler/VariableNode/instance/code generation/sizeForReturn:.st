sizeForReturn: encoder
	(code >= LdSelf and: [code <= LdNil])
		ifTrue: ["short returns" ^1].
	^super sizeForReturn: encoder
