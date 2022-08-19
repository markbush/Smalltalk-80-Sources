compositionRectangle: compositionRect list: aList style: aTextStyle offset: aPoint outputMedium: aSymbol
	compositionRectangle _ compositionRect copy.
	list _ aList.
	text _ Text new.
	textStyle _ aTextStyle.
	firstIndent _ textStyle firstIndent.
	restIndent _ textStyle restIndent.
	rightIndent _ textStyle rightIndent.
	marginTabsLevel _ 0.
	outputMedium _ aSymbol.
	rule _ DefaultRule.
	mask _ DefaultMask.
	destinationForm _ Display.
	clippingRectangle _ destinationForm boundingBox.
	offset _ aPoint.
	lastLine _ list size.
	compositionRectangle height: textStyle lineGrid * lastLine
