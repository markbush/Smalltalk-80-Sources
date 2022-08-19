declareCorrect: name
	"Attempt to correct the spelling of an undeclared variable."

	| old lc names score bestScore guess |
	old _ name.
	lc _ old first asLowercase.
	names _
			(scopeTable keys select: [:key | key first asLowercase = lc]).
	names addAll:
			(class allVarNamesSelect: [:key | key first asLowercase = lc]).

	bestScore _ 0.
	names do:
		[:name |
		(score _ name spellAgainst: old) > bestScore ifTrue:
			[bestScore _ score. guess _ name]].

	bestScore > 50 ifFalse: [^ self notify: 'Couldn''t correct'].
	(self confirm: 'Confirm correction to ' , guess)
		ifTrue:
			[requestor replaceEditSelectionWith: guess.
			^ self encodeVariable: guess]
		ifFalse:
			[^ self notify: 'Undeclared']
