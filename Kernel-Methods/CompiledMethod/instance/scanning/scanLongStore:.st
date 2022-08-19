scanLongStore: extension
	"Answer whether the receiver contains a long store whose extension is the
	argument."

	| scanner |
	scanner _ InstructionStream on: self.
	^scanner scanFor:
		[:instr |
		(instr between: 129 and: 130) and: [scanner followingByte = extension]]
