collapse
	"If the receiver is not already collapsed, change its view to be that of
	its label only."

	self isCollapsed
		ifFalse:
			[savedSubViews _ subViews.
			self resetSubViews.
			labelText isNil ifTrue: [self label: 'No Label'].
			self window: (self inverseDisplayTransform: self labelDisplayBox region).
			labelFrame borderWidthLeft: 2 right: 2 top: 2 bottom: 2]
