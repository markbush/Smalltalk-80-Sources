messages
	"Answer a Set of all the message selectors sent by this method."

	| scanner aSet |
	aSet _ Set new.
	scanner _ InstructionStream on: self.
	scanner
		scanFor:
			[:x |
			scanner addSelectorTo: aSet.
			false	"keep scanning"].
	^aSet
