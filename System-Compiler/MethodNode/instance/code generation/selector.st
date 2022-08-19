selector
	(selectorOrFalse isMemberOf: Symbol)
		ifTrue: [^selectorOrFalse].
	^selectorOrFalse key
