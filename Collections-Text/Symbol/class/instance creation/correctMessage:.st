correctMessage: unknown
	"Attempt to correct the spelling of an unknown message symbol."
	| lc candidates score bestScore guess hasColon nArgs smaller larger |
	lc _ unknown first asLowercase.
	hasColon _ unknown last = $:.
	unknown first isLetter ifFalse: [^ nil].
	nArgs _ (unknown select: [:char | char = $:]) size.
	candidates _ OrderedCollection new.
	smaller _ unknown size-4.
	larger _ unknown size+4.
	Symbol allInstancesDo:  "fast tests first"
		[:each | (((each at: 1) = lc
				and: [each size between: smaller and: larger])
				and: [(each last = $:) = hasColon and: [each numArgs = nArgs]])
			ifTrue: [candidates add: each]].

	bestScore _ 0.
	candidates do:
		[:each |
		(score _ each spellAgainst: unknown) > bestScore ifTrue:
			[bestScore _ score. guess _ each]].

	bestScore > 50 ifFalse: [^false].
	(self confirm: 'Confirm correction to ' , guess)
		ifTrue: [^ guess asSymbol]
		ifFalse: [^ nil]
