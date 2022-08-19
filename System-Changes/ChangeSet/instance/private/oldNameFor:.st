oldNameFor: class

	| name |
	name _ (classChanges at: class name) asOrderedCollection detect:
				[:x | 'oldName: *' match: x].
	^(Scanner new scanTokens: name) last
