scrollToTop
	"Scroll so that the paragraph is at the top of the view."
	self scrollView: (paragraph clippingRectangle top
		- paragraph compositionRectangle top)
