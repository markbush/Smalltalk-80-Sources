decompile: aSelector in: aClass
	^self
		decompile: aSelector
		in: aClass
		method: (aClass compiledMethodAt: aSelector)
