withText: aText style: aTextStyle
	"Answer an instance of me with text set to aText and style set to aTextStyle."
	^super new
		compositionRectangle: DefaultCompositionRectangle
		text:	aText
		style: aTextStyle
		offset: (0@0)
		outputMedium: #Display
		fitWidth: true
