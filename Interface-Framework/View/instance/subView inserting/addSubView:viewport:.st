addSubView: aView viewport: aViewport
	"Add aView to the receiver's list of subViews (see View|addSubView:) and
	applies to aView a scale and translation computed from its window and
	aViewport (such that its window fills aViewport)."

	self addSubView: aView.
	aView window: aView window viewport: aViewport
