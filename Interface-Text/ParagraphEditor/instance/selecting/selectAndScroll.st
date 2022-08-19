selectAndScroll
	"Scroll until the selection is in the view and then highlight it."

	| lineHeight deltaY clippingRectangle |
	lineHeight _ paragraph textStyle lineGrid.
	clippingRectangle _ paragraph clippingRectangle.
	deltaY _ stopBlock top - clippingRectangle top.
	deltaY >= 0
		ifTrue: [deltaY _ stopBlock bottom - clippingRectangle bottom max: 0].
						"check if stopIndex below bottom of clippingRectangle"
	deltaY ~= 0
		ifTrue: [self scrollBy: (deltaY abs + lineHeight - 1 truncateTo: lineHeight)
									* deltaY sign].
	self select
