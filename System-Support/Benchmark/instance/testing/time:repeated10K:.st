time: aBlock repeated10K: tenKTimes
	| i emptyBlock emptyTime blockTime |
	tenKTimes > 10000 ifTrue: [^self error: 'one hundred million repetitions is my limit'].
	emptyBlock _ [].
	emptyTime _
			Time millisecondsToRun:
					[1 to: tenKTimes do:
						[:j |
						i _ 0.
						[(i _ i + 1) <= 10000]
							whileTrue: [emptyBlock value]]].
	blockTime _
			Time millisecondsToRun:
					[1 to: tenKTimes do:
						[:j |
						i _ 0.
						[(i _ i + 1) <= 10000]
							whileTrue: [aBlock value]]].
	^blockTime - emptyTime
