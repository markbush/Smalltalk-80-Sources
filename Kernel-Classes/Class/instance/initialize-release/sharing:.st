sharing: poolString
	"Set up sharedPools.  Answer whether recompilation is advisable."

	| oldPools poolName pool |
	oldPools _ self sharedPools.
	sharedPools _ Set new.
	(Scanner new scanFieldNames: poolString) do:
		[:poolName |
		sharedPools add: (Smalltalk at: poolName asSymbol)].
	sharedPools isEmpty ifTrue: [sharedPools _ nil].
	oldPools
		detect: [:pool | (self sharedPools includes: pool) not]
		ifNone: [^false].
	^true	"A pool got deleted - who knows if there are still references?"
