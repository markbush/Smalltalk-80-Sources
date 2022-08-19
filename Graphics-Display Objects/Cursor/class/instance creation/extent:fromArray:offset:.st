extent: extentPoint fromArray: anArray offset: offsetPoint
	"Answer a new instance of me with width and height specified by
	extentPoint, offset by offsetPoint, and bits from anArray."

	extentPoint = (16 @ 16)
		ifTrue:
			[^super
				extent: extentPoint
				fromArray: anArray
				offset: offsetPoint]
		ifFalse: [self error: 'cursors must be 16@16']
