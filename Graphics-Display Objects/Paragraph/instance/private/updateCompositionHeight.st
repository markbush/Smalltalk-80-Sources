updateCompositionHeight
	"Mainly used to insure that intersections with compositionRectangle work."

	compositionRectangle height: textStyle lineGrid * lastLine.
	(text size ~= 0 and: [(text at: text size) = CR])
		ifTrue: [compositionRectangle
					height: compositionRectangle height + textStyle lineGrid]
