isSelectionBoxClipped
	"Answer whether there is a selection and whether the selection is visible
	on the screen."

	^selection ~= 0 & (self selectionBox intersects: self clippingBox) not
