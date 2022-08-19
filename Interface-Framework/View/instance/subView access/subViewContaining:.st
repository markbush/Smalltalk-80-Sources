subViewContaining: aPoint
	"Answer the first subView that contains aPoint within its window and answer
	nil, otherwise. It is typically sent from a Controller in order to determine
	where to pass control (usually to the Controller of the View returned by
	View|subViewContaining:). "

	subViews reverseDo:
		[:aSubView |
		(aSubView displayBox containsPoint: aPoint) ifTrue: [^aSubView]].
	^nil
