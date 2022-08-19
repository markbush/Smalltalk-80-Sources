extent: extentPoint fromCompactArray: anArray offset: offsetPoint
	"Answer an instance of me with bitmap initialized from anArray."
	^self basicNew
		setExtent: extentPoint
		fromCompactArray: anArray
		setOffset: offsetPoint
