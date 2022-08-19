browseAllNonAsciiMessages
	"Bring up a Message Set Window with methods containing bad characters"

	| char cr ff tab aStream badCharacter |
	cr _ Character cr asciiValue.
	ff _ Character newPage asciiValue.
	tab _ Character tab asciiValue.
	Smalltalk
		browseAllSelect:
			[:method |
			badCharacter _ false.
			aStream _ ReadStream on: method getSource.
			[aStream atEnd or: [badCharacter]]
				whileFalse:
					[char _ aStream next asciiValue.
					(char > 127
						or: [char < 32
								and: [char ~= cr & (char ~= ff) & (char ~= tab)]])
						ifTrue:
							[Transcript show: '*'.
							badCharacter _ true]].
			badCharacter]
	"Smalltalk browseAllNonAsciiMessages."
