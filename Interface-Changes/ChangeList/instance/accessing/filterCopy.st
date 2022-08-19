filterCopy
	^self class new listName: '(', self listName, ')' changes: list removed: (list select: [:c | removed includes: c])
