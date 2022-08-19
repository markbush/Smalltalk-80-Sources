addSubView: aView in: aRelativeRectangle borderWidth: width

	"I make 'aView' into a subview. I use 'aRelativeRectangle' and the super view's window to compute (1) a viewport within the superview for 'aView' and (2) the window extent for 'aView'.
Note: defining the windowing transformation and deriving the viewport is logically equivalent but does not seem to be easily done"

	| subViewPort subWindow |
	self addSubView: aView ifCyclic: [self error: 'cycle in subView structure.'].
	aView borderWidth: width.
	subViewPort _ self window extent * aRelativeRectangle origin
			corner: self window extent * aRelativeRectangle corner.
	subWindow _ 0 @ 0 extent: (self window extent * aRelativeRectangle extent).
	aView window: subWindow viewport: subViewPort
