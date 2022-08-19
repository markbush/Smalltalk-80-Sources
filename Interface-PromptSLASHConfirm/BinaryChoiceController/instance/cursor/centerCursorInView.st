centerCursorInView
	"Position sensor's mousePoint (which is assumed to be connected to the
	cursor) to the center of its view's inset display box (see Sensor|mousePoint: and
	View|insetDisplayBox)."

	| lowestSubView subViews |
	subViews_ view subViews.
	subViews isEmpty
		ifFalse:	[lowestSubView _ subViews at: 1.
				subViews do:
					[:subView |
						(subView insetDisplayBox top >
							lowestSubView insetDisplayBox top)
						ifTrue:	[lowestSubView _ subView]].
				^lowestSubView controller centerCursorInView].

	^super centerCursorInView
