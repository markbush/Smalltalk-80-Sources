addSubView: aSubView toRightOf: leftView
	"Adds aView (see addSubView:) so that it lies to the right of leftView"
	self addSubView: aSubView
		align: aSubView viewport topLeft
		with: leftView viewport topRight
