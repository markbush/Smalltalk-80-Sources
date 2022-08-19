deepCopy
	"Answer a copy of the receiver with its own copy of each instance variable."

	| newObject class index |
	class _ self class.
	(class == Object) ifTrue: [^self].
	class isVariable
		ifTrue:
			[index _ self basicSize.
			newObject _ class basicNew: index.
			[index > 0]
				whileTrue:
					[newObject basicAt: index put: (self basicAt: index) deepCopy.
					index _ index - 1]]
		ifFalse: [newObject _ class basicNew].
	index _ class instSize.
	[index > 0]
		whileTrue:
			[newObject instVarAt: index put: (self instVarAt: index) deepCopy.
			index _ index - 1].
	^newObject
