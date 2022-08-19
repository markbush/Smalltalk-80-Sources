addSubView: aView
	"Remove aView from the tree of Views it is in (if any) and adds it to the rear
	of the list of subViews of the receiver.  Set the superView of aView to be the
	receiver. It is typically used to build up a hierarchy of Views (a structured
	picture). An error is generated if aView is the same as the receiver or its
	superView, etc."

	self addSubView: aView ifCyclic: [self error: 'cycle in subView structure.']
