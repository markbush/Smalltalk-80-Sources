fieldsTouched
	"Answer a Set of fields touched by this method."
	| scanner aSet |
	self isReturnField ifTrue: [^ Set with: self returnField + 1].
	self isReturnSelf ifTrue: [^ Set new].
	aSet _ Set new.
	scanner _ InstructionStream on: self.
	scanner
		scanFor:
			[:x |
			scanner addFieldIndexTo: aSet.
			false	"keep scanning"].
	^aSet
