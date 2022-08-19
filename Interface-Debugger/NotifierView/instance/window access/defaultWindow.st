defaultWindow
	contents == nil
		ifTrue: [^super defaultWindow]
		ifFalse: [^contents boundingBox expandBy: 6]
