text: aText textStyle: aTextStyle
	"Answer an instance of me such that the text displayed is aText
	according to the style specified by aTextStyle."
	^self new
		setText: aText
		textStyle: aTextStyle
		offset: 0 @ 0
