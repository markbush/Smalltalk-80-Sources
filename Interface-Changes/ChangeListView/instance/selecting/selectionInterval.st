selectionInterval
	"Answer the currently visible range of selection indices."

	^((self selectionIndex: self insetDisplayBox top) max: 1) to:
	 ((self selectionIndex: self insetDisplayBox bottom) min: model listSize)
