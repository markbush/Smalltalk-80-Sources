sourceCodeForMethod: method at: messageSelector
	"Answer the string corresponding to the source code for the argument."
	| newSource index|
	Sensor leftShiftDown
		ifTrue: [newSource _
					(self decompilerClass new
						decompile: messageSelector
						in: self
						method: method) decompileString]
		ifFalse:
			[newSource _ method getSource.
			newSource == nil
				ifTrue: [newSource _
							(self decompilerClass new
								decompile: messageSelector
								in: self
								method: method) decompileString]
				ifFalse:	[((newSource at: newSource size) isSeparator)
							ifTrue:	[index _ newSource size. "tidy up for file out"
									[((newSource at: index) isSeparator)
										and: [index > 1]]
										whileTrue:	[index _ index - 1].
									newSource _ newSource copyFrom: 1 to: index]]].
	^newSource
