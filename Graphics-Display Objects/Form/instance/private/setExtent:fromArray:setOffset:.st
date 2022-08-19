setExtent: extentPoint fromArray: anArray setOffset: offsetPoint
	width _ extentPoint x.
	height _ extentPoint y.
	offset _ offsetPoint.
	bits _ WordArray new: width + 15 // 16 * height.
	1 to: anArray size do:
		[:index | bits at: index put: (anArray at: index)]
