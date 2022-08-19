subViewWantingControl
	"Answer the first subView that has a controller that now wants control."

	subViews reverseDo:
		[:aSubView | aSubView controller isControlWanted ifTrue: [^aSubView]].
	^nil
