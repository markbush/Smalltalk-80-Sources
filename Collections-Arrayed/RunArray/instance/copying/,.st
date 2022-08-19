, aRunArray
	"Answer a new RunArray that is a concatenation of the receiver and aRunArray."

	| new newRuns |
	(aRunArray isMemberOf: RunArray)
		ifFalse:
			[new _ self copy.
			"attempt to be sociable"
			aRunArray do: [:each | new addLast: each].
			^new].
	runs size = 0 ifTrue: [^aRunArray copy].
	aRunArray runs size = 0 ifTrue: [^self copy].
	values last ~= aRunArray first
		ifTrue: [^RunArray
					runs: runs , aRunArray runs
					values: values , aRunArray values].
	newRuns _ runs
					copyReplaceFrom: runs size
					to: runs size
					with: aRunArray runs.
	newRuns at: runs size put: runs last + aRunArray runs first.
	^RunArray
		runs: newRuns
		values:
			(values
				copyReplaceFrom: values size
				to: values size
				with: aRunArray values)
