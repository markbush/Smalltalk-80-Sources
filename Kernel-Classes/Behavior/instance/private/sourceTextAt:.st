sourceTextAt: selector
	"Answer with the string of the source code for the message selector."

	| newSource method |
	method _ methodDict at: selector.
	Sensor leftShiftDown
		ifTrue: [newSource _
					self decompilerClass new
						decompile: selector
						in: self
						method: method]
		ifFalse:
			[newSource _ method getSource.
			newSource == nil
				ifTrue: [newSource _
							self decompilerClass new
								decompile: selector
								in: self
								method: method]].
	^newSource asText
