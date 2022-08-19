insertSubView: aSubView above: lowerView
	"Adds aView (see View|addSubView:) so that it lies above lowerView"
	self insertSubView: aSubView before: lowerView ifCyclic: [self error: 'cycle in subView structure.'].
	aSubView
		align: aSubView viewport bottomLeft
			with: lowerView viewport topLeft.
