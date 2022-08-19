fileIndex
	"Answer 1 if the source code of the receiver is on the *.sources file
	and 2 if it is on the *.changes file."

	(self last between: 120 and: 124)
		ifTrue: [self error: 'Somehow a method does not have a file index.'].
	^self last // 64 + 1
