displayLines: linesInterval
	"This is the first level workhorse in the display portion of the TextForm routines.
	It checks to see which lines in the interval are actually visible, has the
	DisplayScanner display only those, clears out the areas in which display will
	occur, and clears any space remaining in the visibleRectangle following the space
	occupied by lastLine."

	| lineGrid visibleRectangle topY firstLineIndex lastLineIndex lastLineIndexBottom |
	lineGrid _ textStyle lineGrid.
	"Save some time by only displaying visible lines"
	visibleRectangle _
		(clippingRectangle intersect: compositionRectangle)
			  intersect: destinationForm boundingBox.
	firstLineIndex _ self lineIndexOfTop: visibleRectangle top.
	firstLineIndex < linesInterval first ifTrue: [firstLineIndex _ linesInterval first].
	lastLineIndex _ self lineIndexOfTop: visibleRectangle bottom - 1.
	lastLineIndex > linesInterval last
		ifTrue:
			[linesInterval last > lastLine
		 		ifTrue: [lastLineIndex _ lastLine]
		  		ifFalse: [lastLineIndex _ linesInterval last]].
	((Rectangle
		origin: visibleRectangle left @ (topY _ self topAtLineIndex: firstLineIndex)
		corner: visibleRectangle right @
					(lastLineIndexBottom _ (self topAtLineIndex: lastLineIndex)
					  + lineGrid))
	  intersects: visibleRectangle)
	  	ifFalse: ["None of lines in interval visible." ^self].
	"Set boundingBox containing the lines in linesInterval to color for space surrounding
	the characters."
	destinationForm
	  fill: ((visibleRectangle left @ topY
				extent: visibleRectangle width @ (lastLineIndexBottom - topY))
		  	intersect: visibleRectangle)
	  rule: rule
	  mask: Form white.
	DisplayScanner new
	  displayLines: (firstLineIndex to: lastLineIndex)
	  in: self
	  clippedBy: visibleRectangle.
	lastLineIndex = lastLine
		ifTrue:
		 [destinationForm
		  fill: (visibleRectangle left @ lastLineIndexBottom
				extent: visibleRectangle width @
					(visibleRectangle bottom - lastLineIndexBottom))
		  rule: rule
		  mask: Form white]
