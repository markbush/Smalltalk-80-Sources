copy
	| newCollection |
	newCollection _ self species sortBlock: sortBlock.
	newCollection addAll: self.
	^newCollection
