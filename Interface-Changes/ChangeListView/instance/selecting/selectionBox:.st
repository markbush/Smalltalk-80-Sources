selectionBox: listIndex
	"Answer the rectangle in which a particular selection is displayed."

	^(self insetDisplayBox left @
			(list compositionRectangle top + (self selectionBoxOffset: listIndex))
		extent: self insetDisplayBox width @ list lineGrid)
		insetBy: (Rectangle left: 1 right: 1 top: 1 bottom: 0)
