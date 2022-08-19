setStopConditions
	"Set the font and the stop conditions for the current run."

	font _ textStyle fontAt: (text emphasisAt: lastIndex).
	super setStopConditions.
