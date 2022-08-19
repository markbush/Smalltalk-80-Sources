text: aText textStyle: aTextStyle offset: aPoint
	"Answer an instance of me such that the text displayed is aText
	according to the style specified by aTextStyle.  The display of the
	information should be offset by the amount given as the argument, aPoint."
	^self new
		setText: aText
		textStyle: aTextStyle
		offset: aPoint
