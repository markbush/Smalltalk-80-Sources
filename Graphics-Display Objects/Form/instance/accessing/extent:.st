extent: aPoint
	"Create a virtual bit map with width = (extent x) and height = (extent y)
	with the bits all zeros (white).  The extent is guaranteed to be zero or a positive
	size."

	| nonZeroExtent extentSize |
	nonZeroExtent _
		aPoint >= (0 @ 0)
			ifTrue: [aPoint]
			ifFalse: [0 @ 0].
	extentSize _ nonZeroExtent y * (nonZeroExtent x + 15 // 16).
	self extent: nonZeroExtent
		offset: 0 @ 0
		bits: (WordArray new: (extentSize min: WordArray maxSize))
