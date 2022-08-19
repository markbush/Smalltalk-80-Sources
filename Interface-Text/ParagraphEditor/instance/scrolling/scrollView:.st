scrollView: anInteger
	| maximumAmount minimumAmount amount |
	self deselect.
	maximumAmount _
		paragraph clippingRectangle top - paragraph compositionRectangle top max: 0.
	minimumAmount _
		paragraph clippingRectangle top
			+ paragraph lineGrid - paragraph compositionRectangle bottom min: 0.
	amount _ (anInteger min: maximumAmount) max: minimumAmount.
	amount ~= 0 ifTrue: [self scrollBy: amount negated].
	self select
