resetState
	"Establish the initial conditions for editing the paragraph:  place caret
	before first character, set the emphasis to that of the first character,
	and save the paragraph for purposes of canceling."

	| insetDisplayBox |
	insetDisplayBox _ paragraph compositionRectangle.
	startBlock _
		CharacterBlock
			stringIndex: 1
			character: nil
			boundingRectangle: (insetDisplayBox topLeft extent: 0 @ 0).
	stopBlock _ startBlock copy.
	beginTypeInBlock _ startBlock copy.
	self setEmphasisHere.
	selectionShowing _ false.
	initialText _ paragraph text copy
