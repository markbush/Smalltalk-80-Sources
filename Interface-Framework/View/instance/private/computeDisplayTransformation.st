computeDisplayTransformation
	"Returns a WindowingTransformation that transforms the coordinate
	system of the View into that of the display screen. The transformation is
	computed by composing the View's transformation with all transformations
	along its superView chain.
	It is sent by View|displayTransformation when the View is unlocked (see
	View|unlock)."

	self isTopView
		ifTrue: [^transformation]
		ifFalse: [^superView displayTransformation compose: transformation]
