testShortBranch
	self test: [false ifTrue: [1] ifFalse: [2].
			  false ifTrue: [1] ifFalse: [2].
			  false ifTrue: [1] ifFalse: [2].
			  false ifTrue: [1] ifFalse: [2].
			  false ifTrue: [1] ifFalse: [2].
			  false ifTrue: [1] ifFalse: [2].
			  false ifTrue: [1] ifFalse: [2].
			  false ifTrue: [1] ifFalse: [2].
			  false ifTrue: [1] ifFalse: [2].
			  false ifTrue: [1] ifFalse: [2]. nil]
		labeled: 'short branch on false, 10 times' repeated: 10000

	"Benchmark new testShortBranch"
