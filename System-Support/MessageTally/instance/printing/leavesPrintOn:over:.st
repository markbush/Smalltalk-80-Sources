leavesPrintOn: aStream over: threshold
	| aSet |
	aSet _ Set new: 128.
	self leaves: aSet.
	(aSet asOrderedCollection select: [:node | node tally > threshold])
		asSortedCollection do:
		[:node | node printOn: aStream total: tally]
