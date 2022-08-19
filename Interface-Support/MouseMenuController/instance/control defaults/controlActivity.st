controlActivity
	sensor redButtonPressed & self viewHasCursor
		ifTrue: [^self redButtonActivity].
	sensor yellowButtonPressed & self viewHasCursor
		ifTrue: [^self yellowButtonActivity].
	sensor blueButtonPressed & self viewHasCursor
		ifTrue: [^self blueButtonActivity].
	super controlActivity
