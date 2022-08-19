quickMethod
	^method isReturnSelf
		ifTrue: [constructor codeBlock:
				(Array with: (constTable at: 1 "self")) returns: true]
		ifFalse: [method isReturnField
			ifTrue: [constructor codeBlock:
				(Array with: (constructor codeInst: method returnField)) returns: true]
			ifFalse: [self error: 'improper short method']]
