containsPoint: aPoint
	"Answer true if aPoint is within the receiver's display box,
	and answer false, otherwise. It is sent to a View's
	subViews by View|subViewAt: in order to determine which subView
	contains the cursor point (so that, for example, control can be pass down to
	that subView's controller)."

	^self displayBox containsPoint: aPoint
