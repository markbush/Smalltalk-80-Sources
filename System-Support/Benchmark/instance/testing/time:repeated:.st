time: aBlock repeated: nTimes
	"Answer how many milliseconds it takes to repeat aBlock nTimes, corrected for the
	time to repeat an empty block."

	| i emptyBlock emptyTime blockTime iBox |
	nTimes > 10000 ifTrue: [^self time: aBlock repeated10K: nTimes // 10000].
	emptyBlock _ [].
	emptyTime _ Time millisecondsToRun:
							[i _ 0.
							 [(i _ i + 1) <= nTimes] whileTrue: [emptyBlock value]].
	blockTime _ Time millisecondsToRun:
							[i _ 0.
							 [(i _ i + 1) <= nTimes] whileTrue: [aBlock value]].
	^blockTime - emptyTime
