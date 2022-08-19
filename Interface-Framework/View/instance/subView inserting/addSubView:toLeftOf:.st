addSubView: aSubView toLeftOf: rightView
	"Adds aView (see addSubView:) so that it lies to the left of rightView."
	self addSubView: aSubView
		align: aSubView viewport topRight
		with:  rightView viewport topLeft
