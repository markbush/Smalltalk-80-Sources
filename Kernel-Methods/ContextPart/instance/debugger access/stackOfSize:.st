stackOfSize: limit
	"Answer an array of the top 'limit' contexts on the receiver's sender chain."

	| a stack |
	stack _ OrderedCollection new: 100.
	stack addLast: (a _ self).
	[(a _ a sender) ~~ nil and: [stack size < limit]]
		whileTrue:
			[stack addLast: a].
	^ stack
