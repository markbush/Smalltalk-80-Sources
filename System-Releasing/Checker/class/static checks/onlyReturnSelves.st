onlyReturnSelves
	"Return message names for messages that are ^self only (i.e. no implementation)
	Smalltalk onlyReturnSelves."

	| aStream |
	aStream _ WriteStream on: (Array new: 50).
	Smalltalk allBehaviorsDo:
		[:class |
		class selectors do:
			[:selector |
			(class compiledMethodAt: selector) isReturnSelf
				ifTrue: [aStream nextPut: class name, ' ', selector]]].
	^aStream contents
