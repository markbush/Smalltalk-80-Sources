setExtent: extentPoint fromCompactArray: anArray setOffset: offsetPoint
	| stripe index |
	width _ extentPoint x.
	height _ extentPoint y.
	offset _ offsetPoint.
	bits _ WordArray new: width + 15 // 16 * height.
	stripe _ Form stringScanLineOfWidth: width.
	1 to: anArray size do:
		[:index |
		(anArray at: index) oldRunDecodeOn: (WriteStream on: stripe bits).
		self copy: (0@(index-1) extent: width@1) from: 0@0 in: stripe rule: Form over].
