checkWith: aConflictChecker
	list do:
		[:change |
		(removed includes: change) ifFalse:
			[change checkWith: aConflictChecker]]
