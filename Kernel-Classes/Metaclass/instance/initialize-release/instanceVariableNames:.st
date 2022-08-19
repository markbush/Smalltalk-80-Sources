instanceVariableNames: instVarString
	"Declare additional variables for my instances."

	| newMeta invalid ok |
	newMeta _ self copyForValidation.
	invalid _ newMeta
				subclassOf: superclass
				oldClass: self
				instanceVariableNames: instVarString
				variable: false
				words: true
				pointers: true
				ifBad: [^false].
	invalid
		ifTrue:
			[ok _ newMeta
						validateFrom: self
						in: Smalltalk
						instanceVariableNames: true
						methods: true.
			Smalltalk changes changeClass: self.
			^ok]
