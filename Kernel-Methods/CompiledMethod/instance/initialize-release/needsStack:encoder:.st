needsStack: newStackSize encoder: encoder
	"If newStackSize does not fit in the receiver, then the receiver
	becomes a method with large stack."

	| newMethod newNumLits extraBytes largeBit |
	(self numTemps + newStackSize + 1) <= SmallFrame
		ifTrue: ["no problem" ^ self].
	(self numTemps + newStackSize + 1) > LargeFrame
		ifTrue: [^self error: 'Stack (including temps) is too deep'].
	newMethod _ CompiledMethod
				newBytes: self endPC - self initialPC + 1
				flags: self flags
				nTemps: self numTemps
				nStack: newStackSize
				nLits: self numLiterals.
		1 to: self numLiterals do:
			[:index | newMethod literalAt: index put: (self literalAt: index)].
		extraBytes _ 0.

	self initialPC to: self size do:
		[:index | newMethod at: index+extraBytes put: (self at: index)].
	self become: newMethod
