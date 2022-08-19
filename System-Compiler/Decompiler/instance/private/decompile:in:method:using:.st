decompile: aSelector in: aClass method: aMethod using: aConstructor
	| block |
	constructor _ aConstructor.
	method _ aMethod.
	self initSymbols: aClass.  "create symbol tables"
	method isQuick
		ifTrue: [block _ self quickMethod]
		ifFalse:
			[stack _ OrderedCollection new: method frameSize.
			statements _ OrderedCollection new: 20.
			super method: method pc: method initialPC.
			block _ self blockTo: method endPC + 1.
			stack isEmpty ifFalse: [self error: 'stack not empty']].
	^constructor
		codeMethod: aSelector
		block: block
		tempVars: tempVars
		primitive: method primitive
		class: aClass
