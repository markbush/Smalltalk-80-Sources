doPrimitive: primitiveIndex receiver: receiver args: arguments
	"Simulate a primitive method whose index is primitiveIndex.  The
	simulated receiver and arguments are given as arguments to this message."

	| numberArguments primitiveMethod value |
	"If successful, push result and return resuming context, else ^#primitiveFail"
	(primitiveIndex = 80 and: [receiver isKindOf: ContextPart])
		ifTrue: [^self push:
					((BlockContext new: receiver size)
						home: receiver home
						startpc: pc + 2
						nargs: arguments first)].
	(primitiveIndex = 81 and: [receiver isMemberOf: BlockContext])
		ifTrue: [^receiver pushArgs: arguments from: self].
	primitiveIndex = 83
		ifTrue: [^self
					send: arguments first
					to: receiver
					with: (arguments copyFrom: 2 to: arguments size)
					super: false].
	numberArguments _ arguments size.
	numberArguments > 4 ifTrue: [^#primitiveFail].
	"currently fails text primitive"
	primitiveMethod _ TryPrimitiveMethods at: numberArguments + 1.
	primitiveMethod
		literalAt: 2
		put: ((primitiveMethod literalAt: 2) bitAnd: -256) + primitiveIndex.
	"slam num into primitive"
	"Instead of 100 such messages in Object"
	Class flushCache.
	"in case interp caches primitive #"
	numberArguments = 0 ifTrue: [value _ receiver tryPrimitive0].
	numberArguments = 1 ifTrue: [value _ receiver tryPrimitive1: (arguments at: 1)].
	numberArguments = 2 ifTrue: [value _ receiver tryPrimitive2: (arguments at: 1)
					with: (arguments at: 2)].
	numberArguments = 3 ifTrue: [value _ receiver
					tryPrimitive3: (arguments at: 1)
					with: (arguments at: 2)
					with: (arguments at: 3)].
	numberArguments = 4 ifTrue: [value _ receiver
					tryPrimitive4: (arguments at: 1)
					with: (arguments at: 2)
					with: (arguments at: 3)
					with: (arguments at: 4)].
	numberArguments > 4 ifTrue: [self error: 'too many arguments to this primitive'].
	value == #primitiveFail
		ifTrue: [^value]
		ifFalse: [^self push: value]
