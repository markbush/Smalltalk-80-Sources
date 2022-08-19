addSubView: aView window: aWindow viewport: aViewport
	"Add aView to the receiver's list of subViews (see View|addSubView:) and
	applies to aView a scale and translation computed from aWindow and
	aViewport (such that aWindow fills aViewport)."

	self addSubView: aView.
	aView window: aWindow viewport: aViewport
