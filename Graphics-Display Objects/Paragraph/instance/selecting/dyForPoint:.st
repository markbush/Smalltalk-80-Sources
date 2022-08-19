dyForPoint: pt
	"See if pt is above or below clippingRectangle, return scroll amount"

	| dy dyLim |
	((dy _ pt y - clippingRectangle top) < 0
	 and: [(dyLim _ compositionRectangle top - clippingRectangle top) < 0])
		ifTrue: [^(dy max: dyLim) - textStyle lineGrid].
	((dy _ pt y - clippingRectangle bottom) > 0
	 and: [(dyLim _ compositionRectangle bottom - clippingRectangle bottom) > 0])
		ifTrue: [^(dy min: dyLim) + textStyle lineGrid].
	^0
