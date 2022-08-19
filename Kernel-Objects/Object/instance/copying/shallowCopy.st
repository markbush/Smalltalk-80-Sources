shallowCopy
	"Answer a copy of the receiver which shares the receiver's instance
	variables. "

	| class newObject index |
	class _ self class.
	"I don't understand why the following check is here.  Object is not
	supposed to have any instances at all."
	class == Object ifTrue: [^self].
	class isVariable
		ifTrue:
			[index _ self basicSize.
			newObject _ class basicNew: index.
			[index > 0]
				whileTrue:
					[newObject basicAt: index put: (self basicAt: index).
					index _ index - 1]]
		ifFalse: [newObject _ class basicNew].
	index _ class instSize.
	[index > 0]
		whileTrue:
			[newObject instVarAt: index put: (self instVarAt: index).
			index _ index - 1].
	^newObject
