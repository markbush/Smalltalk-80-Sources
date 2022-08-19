testCompiler
	self test:
			[Benchmark compile:
'dummy: aBlock repeated: nTimes | i emptyBlock emptyTime blockTime |
	nTimes > 1000 ifTrue: [^self time: aBlock repeatedK: nTimes // 1000].
	emptyBlock _ [].
	emptyTime _ Time millisecondsToRun:
					[i _ 0.
					 [(i _ i + 1) <= nTimes] whileTrue: [emptyBlock value]].
	blockTime _ Time millisecondsToRun:
					[i _ 0.
					 [(i _ i + 1) <= nTimes] whileTrue: [aBlock value]].
	^blockTime - emptyTime'
				notifying: nil trailer: #(0 0 0)]
		labeled: 'compile dummy method' repeated: 5.
	Benchmark removeSelector: #dummy:repeated:

	"Benchmark new testCompiler"
