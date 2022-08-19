match: text
	"Answer whether text matches the pattern in the receiver.  Matching
	ignores upper/lower case differences.  Where the receiver contains #, text may
	contain any single character.  Where the receiver contains *, text may contain any
	sequence of characters."

	| pattern scanning p t back textStream startScan |
	pattern _ ReadStream on: self.
	textStream _ ReadStream on: text.
	scanning _ false.
	[pattern atEnd]
		whileFalse:
			[p _ pattern next.
			p = $*
				ifTrue:
					[pattern atEnd ifTrue: [^true].
					scanning _ true.
					startScan _ pattern position]
				ifFalse:
					[textStream atEnd ifTrue: [^false].
					t _ textStream next.
					(t asUppercase = p asUppercase or: [p = $#])
						ifFalse:
							[scanning ifFalse: [^false].
							back _ startScan - pattern position.
							pattern skip: back.
							textStream skip: back + 1]].
			(scanning and: [pattern atEnd and: [textStream atEnd not]])
				ifTrue: [back _ startScan - pattern position.
						pattern skip: back.
						textStream skip: back + 1]
			].
	^textStream atEnd

	" Examples:

	'xyz' match: 'Xyz'  true
	'x#z' match: 'x@z' true
	'x*z' match: 'x whyNot? z' true
	'*x' match: 'xx' true
	"
