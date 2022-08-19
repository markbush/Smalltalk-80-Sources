leftMarginTabAt: marginIndex
	"Set the 'nesting' level of left margin indents of the paragraph in the style of the receiver to be marginIndex."

	^ self marginTabAt: marginIndex side: 1		"1= leftSide, 2 = rightSide"

	"The marginTabsArray is an Array of tuples.  The Array is indexed according
	to the marginIndex, the 'nesting' level of the requestor."
