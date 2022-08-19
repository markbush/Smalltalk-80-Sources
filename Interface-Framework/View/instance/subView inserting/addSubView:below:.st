addSubView: aSubView below: lowerView
	"Adds aView (see View|addSubView:) so that it lies below lowerView"
	self addSubView: aSubView
		align: aSubView viewport topLeft
		with: lowerView viewport bottomLeft
