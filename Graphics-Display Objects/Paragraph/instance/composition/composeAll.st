composeAll
	"Compose a collection of characters into a collection of lines."

	| startIndex stopIndex lineIndex maximumRightX compositionScanner |
	lines _ Array new: 32.
	lastLine _ 0.
	maximumRightX _ 0.
	text size = 0
		ifTrue:
			[compositionRectangle height: 0.
			^maximumRightX].
	startIndex _ lineIndex _ 1.
	stopIndex _ text size.
	compositionScanner _ CompositionScanner new in: self.
	[startIndex > stopIndex] whileFalse:
		[self lineAt: lineIndex
				put: (compositionScanner composeLine: lineIndex
										fromCharacterIndex: startIndex
										inParagraph: self).
		 maximumRightX _ compositionScanner rightX max: maximumRightX.
		 startIndex _ (lines at: lineIndex) last + 1.
		 lineIndex _ lineIndex + 1].
	self updateCompositionHeight.
	self trimLinesTo: lineIndex - 1.
	^maximumRightX
