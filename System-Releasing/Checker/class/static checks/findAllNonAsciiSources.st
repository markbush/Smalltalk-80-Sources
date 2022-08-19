findAllNonAsciiSources
	"Collect chunks from the source files containing bad characters"

	| char cr ff tab aStream badCharacter aFileStream aChunk badStream|
	cr _ Character cr asciiValue.
	ff _ Character newPage asciiValue.
	tab _ Character tab asciiValue.
	badStream _ WriteStream on: (Array new: 10).
	Cursor execute show.
	1 to: 2 do:
		[:i |
		aFileStream _ (SourceFiles at: i) copy.
		aFileStream reset.
		[aFileStream atEnd]
			whileFalse:
				[aChunk _ aFileStream nextChunk.
				aStream _ ReadStream on: aChunk.
				badCharacter _ false.
				[aStream atEnd or: [badCharacter]]
				whileFalse:
					[char _ aStream next asciiValue.
					(char > 127
						or: [char < 32
							and: [char ~= cr & (char ~= ff) & (char ~= tab)]])
						ifTrue:
						[Transcript show: '*'.
						badCharacter _ true]].
				badCharacter ifTrue: [badStream nextPut: aChunk]].
		aFileStream close].
	Cursor normal show.
	^badStream contents
	"Smalltalk findAllNonAsciiSources inspect."
