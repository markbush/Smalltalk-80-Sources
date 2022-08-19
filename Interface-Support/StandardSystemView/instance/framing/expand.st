expand
	"If the receiver is collapsed, change its view to be that of all of its subviews,
	not its label alone."

	self isCollapsed
		ifTrue:
			[subViews _ savedSubViews.
			self window: self defaultWindow.
			labelFrame borderWidthLeft: 2 right: 2 top: 2 bottom: 0.
			savedSubViews _ nil]
