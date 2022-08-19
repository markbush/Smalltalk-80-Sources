initialize
	super initialize.
	self insideColor: Form lightGray.
	labelFrame _ Quadrangle new.
	labelFrame region: (Rectangle origin: 0 @ 0 extent: 50 @ 20).
	labelFrame insideColor: Form white.
	labelFrame
		borderWidthLeft: 2
		right: 2
		top: 2
		bottom: 0.
	self label: nil.
	isLabelComplemented _ false.
	minimumSize _ 50 @ 50.
	maximumSize _ Display extent
