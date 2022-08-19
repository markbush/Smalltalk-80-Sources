deselect
	"If the receiver has a selection, then it is highlighted.  Remove the highlighting."
	selection ~= 0 ifTrue: [Display reverse: (self selectionBox intersect: self clippingBox)]
