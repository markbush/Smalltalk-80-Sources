insertSubView: aView before: anotherView ifCyclic: exceptionBlock
	"Remove aView from the tree of Views it is in (if any) and add it to the rear of the list of subViews of the receiver.  Set the superView of aView to be the receiver.   It is typically used to build up a hierarchy of Views (a structured picture). An  error is generated if aView is the same as the receiver or its superView, etc."

	(self isCyclic: aView)
		ifTrue: [exceptionBlock value]
		ifFalse:
			[aView removeFromSuperView.
			subViews add: aView before: anotherView.
			aView superView: self]
