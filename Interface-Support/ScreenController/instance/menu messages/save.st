save
	| prefix |
	prefix _ Smalltalk getImagePrefix.
	prefix isEmpty ifTrue: [^self].
	Smalltalk saveAs: prefix thenQuit: false
