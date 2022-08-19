setStopConditions
	"Set the font and the stop conditions for the current run."
	| fontIndex displayFont |
	font _ textStyle fontAt: (text emphasisAt: lastIndex).
	super setStopConditions.
	stopConditions
		at: Space asInteger + 1
		put: (textStyle alignment = Justified
				ifTrue: [#paddedSpace]
				ifFalse: [nil])
