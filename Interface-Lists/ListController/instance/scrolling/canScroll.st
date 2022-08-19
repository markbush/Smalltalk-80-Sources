canScroll
	| viewList |
	viewList _ view list.
	^viewList compositionRectangle height - viewList clippingRectangle height
		> (viewList lineGrid // 2)
