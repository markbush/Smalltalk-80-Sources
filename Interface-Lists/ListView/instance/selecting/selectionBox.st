selectionBox
	"Answer the rectangle in which the current selection is displayed."

	^(self insetDisplayBox left @ (list compositionRectangle top + self selectionBoxOffset)
		extent: self insetDisplayBox width @ list lineGrid)
		insetBy: (Rectangle left: 1 right: 1 top: 1 bottom: 0)
