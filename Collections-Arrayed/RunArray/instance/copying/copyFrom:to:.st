copyFrom: start to: stop
	| run1 offset1 value1 run2 offset2 value2 newRuns |
	stop < start ifTrue: [^RunArray new].
	self at: start setRunOffsetAndValue: [:run1 :offset1 :value1 | value1].
	self at: stop setRunOffsetAndValue: [:run2 :offset2 :value2 | value2].
	run1 = run2
		ifTrue:
			[newRuns _ Array with: offset2 - offset1 + 1]
		ifFalse:
			[newRuns _ runs copyFrom: run1 to: run2.
			newRuns at: 1 put: (newRuns at: 1) - offset1.
			newRuns at: newRuns size put: offset2 + 1].
	^RunArray runs: newRuns values: (values copyFrom: run1 to: run2)
