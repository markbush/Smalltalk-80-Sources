marginTabAt: marginIndex side: sideIndex
	"The marginTabsArray is an Array of tuples.  The Array is indexed
	according to the marginIndex, the 'nesting' level of the requestor.
	sideIndex is 1 for left, 2 for right"

	| scale |
	scale _ 1.
	(marginIndex > 0 and: [marginIndex < marginTabsArray size])
		ifTrue: [^((marginTabsArray at: marginIndex) at: sideIndex) * scale]
		ifFalse: [^0]
