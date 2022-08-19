compositionRectangle: compositionRect text: aText style: aTextStyle offset: aPoint outputMedium: aSymbol fitWidth: aBoolean
	| paddingDelta lineIndex |
	compositionRectangle _ compositionRect copy.
	text _ aText.
	textStyle _ aTextStyle.
	firstIndent _ textStyle firstIndent.
	restIndent _ textStyle restIndent.
	rightIndent _ textStyle rightIndent.
	marginTabsLevel _ 0.
	outputMedium _ aSymbol.
	lines _ Array new: 32.
	lastLine _ 0.
	rule _ DefaultRule.
	mask _ DefaultMask.
	destinationForm _ Display.
	clippingRectangle _ destinationForm boundingBox.
	offset _ aPoint.
	aBoolean
		ifTrue:	[	"save initial width of compositionRectangle"
				paddingDelta _ compositionRectangle width.
				compositionRectangle width:
					(self composeAll "returns fitted right margin" - compositionRectangle left).
				paddingDelta _ paddingDelta - compositionRectangle width.
					"Have to shrink padding widths created when compositionRectangle was large."
				1 to: lastLine do:
					[:i | (lines at: i) paddingWidth: (lines at: i) paddingWidth - paddingDelta]]
		ifFalse:	["Composition rectangle sent in is the one desired no matter what the maximum
				right struck by the text."
				self composeAll].
