extent: extentPoint offset: offsetPoint
	"Create a virtual bit map with width = (extent x) and height = (extent y)
	with the bits all zeros (white)."

	| normalizedPoint |
	normalizedPoint _ extentPoint >= (0 @ 0)
				ifTrue: [extentPoint]
				ifFalse: [0 @ 0].
	self extent: normalizedPoint
		offset: offsetPoint
		bits: (WordArray new: normalizedPoint y * (normalizedPoint x + 15 // 16))
