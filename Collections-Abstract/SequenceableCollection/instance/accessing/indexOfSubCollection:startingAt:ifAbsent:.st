indexOfSubCollection: aSubCollection startingAt: anIndex ifAbsent: exceptionBlock
	"Answer the index of the receiver's first element, such that that element
	equals the first element of aSubCollection, and the next elements equal the rest of
	the elements of aSubCollection.  Begin the search at element anIndex of the
	receiver.  If no such match is found, answer the result of evaluating exceptionBlock."

	| firstElement eq |
	aSubCollection size = 0 ifTrue: [^exceptionBlock value].
	firstElement _ aSubCollection at: 1.
	anIndex to: self size - aSubCollection size + 1 do:
		[:i |
		eq _ true.
		(self at: i) = firstElement
			ifTrue:
				[1 to: aSubCollection size do:
					[:index |
					(self at: i + index - 1) = (aSubCollection at: index)
						ifFalse: [eq _ false]].
				eq ifTrue: [^i]]].
	^exceptionBlock value
