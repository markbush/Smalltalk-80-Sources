composeLine: lineIndex fromCharacterIndex: startIndex inParagraph: aParagraph
	"Answer an instance of TextLineInterval that represents the next line in the paragraph."

	| runLength done stopCondition |
	lastIndex _ startIndex.		"scanning sets last index"
	self setStopConditions.		"also sets font"
	spaceX _ destX _ leftMargin _
		(aParagraph leftMarginForCompositionForLine: lineIndex).
	rightMargin _ aParagraph rightMarginForComposition.
	leftMargin >= rightMargin ifTrue:
		[self error: 'No room between margins to compose'].
	runLength _ text runLengthFor: startIndex.
	runStopIndex _ (lastIndex _ startIndex) + (runLength - 1).
	line _
		TextLineInterval
			start: lastIndex stop: 0 internalSpaces: 0 paddingWidth: 0.
	spaceCount _ 0.
	done _ false.
	[done]
		whileFalse:
			[stopCondition _
				self
					scanCharactersFrom: lastIndex
					to: runStopIndex
					in: text string
					rightX: rightMargin
					stopConditions: stopConditions
					displaying: false.
			"See setStopConditions for stopping conditions for composing."
			(self perform: stopCondition) ifTrue: [^line]]
