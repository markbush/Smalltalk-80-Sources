extent: extentPoint
	"Answer an instance of me with blank bitmap."
	^self basicNew
		setExtent: extentPoint
		fromArray: Array new
		setOffset: 0@0
