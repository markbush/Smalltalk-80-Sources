displayLines: linesInterval in: aParagraph clippedBy: visibleRectangle
	"The central display routine.  The call on the primitive (scanCharactersFrom:to:in:rightX:) will be interrupted according to the StopConditions array passed to the primitive at which time the code to handle the stopCondition is run and the call on the primitive continued until a stopCondition returns true which means the line has terminated."

	| runLength done lineGrid lineIndex stopCondition displaying|

	self initializeFromParagraph: aParagraph clippedBy: visibleRectangle.
	rightMargin _ aParagraph rightMarginForDisplay.
	lineGrid _ textStyle lineGrid.
	"assume outputMedium Display"
	lineY _ destY _
					aParagraph topAtLineIndex: linesInterval first.
	displaying _ self doesDisplaying.
	linesInterval do:
		[:lineIndex |
		runX _ destX _ leftMargin _
			aParagraph leftMarginForDisplayForLine: lineIndex.
		line _ aParagraph lineAt: lineIndex.
		text _ aParagraph textAt: lineIndex.
		lastIndex _ line first.
		self setStopConditions.	"also sets the font"
		destY _ lineY + self fontAscentDelta.		"fontAscent delta".

		runLength _ text runLengthFor: line first.
		(runStopIndex _ lastIndex + (runLength - 1)) > line last
			ifTrue: [runStopIndex _ line last].
		spaceCount _ 0.
		done _ false.
		[done]
			whileFalse:
				[stopCondition _
								self scanCharactersFrom: lastIndex
									to: runStopIndex
									in: text string
									rightX: rightMargin
									stopConditions: stopConditions
									displaying: displaying.
				"see setStopConditions for stopping conditions for displaying."
				done _ self perform: stopCondition].
			"Y origin upper left -- increases as moving down page."
					lineY _ lineY + lineGrid].
		^lineIndex
