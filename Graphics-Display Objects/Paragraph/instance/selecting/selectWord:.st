selectWord: stringIndex
	"Select delimited text or word--the result of double-clicking."

	| openDelimiter closeDelimiter direction match level leftDelimiters rightDelimiters
	string here hereChar start stop |
	string _ text string.
	here _ stringIndex.
	(here between: 2 and: string size)
		ifFalse: ["if at beginning or end, select entire string"
			^ 1 to: string size + 1].
	leftDelimiters _ '([{<''"
'.
	rightDelimiters _ ')]}>''"
'.
	openDelimiter _ string at: here - 1.
	match _ leftDelimiters indexOf: openDelimiter.
	match > 0
		ifTrue:
			["delimiter is on left -- match to the right"
			start _ here.
			direction _ 1.
			here _ here - 1.
			closeDelimiter _ rightDelimiters at: match]
		ifFalse:
			[openDelimiter _ string at: here.
			match _ rightDelimiters indexOf: openDelimiter.
			match > 0
				ifTrue:
					["delimiter is on right -- match to the left"
					stop _ here - 1.
					direction _ -1.
					closeDelimiter _ leftDelimiters at: match]
				ifFalse: ["no delimiters -- select a token"
					direction _ -1]].
	level _ 1.
	[level > 0 and: [direction > 0
			ifTrue: [here < string size]
			ifFalse: [here > 1]]]
		whileTrue:
			[hereChar _ string at: (here _ here + direction).
			match = 0
				ifTrue: ["token scan goes left, then right"
					hereChar tokenish
						ifTrue: [here = 1
								ifTrue:
									[start _ 1.
									"go right if hit string start"
									direction _ 1]]
						ifFalse: [direction < 0
								ifTrue:
									[start _ here + 1.
									"go right if hit non-token"
									direction _ 1]
								ifFalse: [level _ 0]]]
				ifFalse: ["bracket match just counts nesting level"
					hereChar = closeDelimiter
						ifTrue: [level _ level - 1"leaving nest"]
						ifFalse: [hereChar = openDelimiter
									ifTrue: [level _ level + 1"entering deeper nest"]]]].
	level > 0 ifTrue: ["in case ran off string end"	here _ here + direction].
	direction > 0
		ifTrue: [^ start to: here]
		ifFalse: [^ here + 1 to: stop + 1]
