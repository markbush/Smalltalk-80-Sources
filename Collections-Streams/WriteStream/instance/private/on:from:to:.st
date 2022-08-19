on: aCollection from: firstIndex to: lastIndex
	| len |
	collection _ aCollection.
	readLimit _
		writeLimit _ lastIndex > (len _ collection size)
						ifTrue: [len]
						ifFalse: [lastIndex].
	position _ firstIndex <= 1
				ifTrue: [0]
				ifFalse: [firstIndex - 1]
