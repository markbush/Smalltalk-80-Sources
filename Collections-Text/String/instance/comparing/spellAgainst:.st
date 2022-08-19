spellAgainst: aString
	"Answer an integer between 0 and 100 indicating how similar the argument is to the receiver.  No case conversion is done."

	| i1 i2 size1 size2 score maxLen |
	size1 _ self size.
	size2 _ aString size.
	maxLen _ size1 max: size2.
	score _ 0.
	i1 _ i2 _ 1.
	[i1 <= size1 and: [i2 <= size2]] whileTrue:
		[(self at: i1) = (aString at: i2)
			ifTrue: [score _ score+1. 		"match"
					i1 _ i1+1. 				"advance both"
					i2 _ i2+1]
			ifFalse: [(i2 < size2 and: [(self at: i1) = (aString at: i2+1)])
						ifTrue: [i2 _ i2+1] 	"skip in other"
			ifFalse: [(i1 < size1 and: [(self at: i1+1) = (aString at: i2)])
						ifTrue: [i1 _ i1+1] 	"skip in self"
			ifFalse: [i1 _ i1+1. 				"miss - advance both"
					i2 _ i2+1] ] ] ].

	score = maxLen
		ifTrue: [^100]
		ifFalse: [^100*score//maxLen]

	" 'Smalltalk' spellAgainst: 'Smalltlak' "
