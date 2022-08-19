scrollView: anInteger
	| viewList maximumAmount minimumAmount amount |
	viewList _ view list.
	maximumAmount _
		viewList clippingRectangle top -
		viewList compositionRectangle top max: 0.
	minimumAmount _
		viewList clippingRectangle bottom -
		viewList compositionRectangle bottom min: 0.
	amount _
		(anInteger min: maximumAmount) max:
		minimumAmount.
	amount ~= 0
		ifTrue:
			[view deselect.
			viewList scrollBy: amount negated.
			view displaySelectionBox]
