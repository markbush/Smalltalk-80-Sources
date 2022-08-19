withText: aText
	"Answer an instance of me with text set to aText and style set to
	the system's default text style."

	^self withText: aText style: DefaultTextStyle copy
