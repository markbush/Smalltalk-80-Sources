firstSubView
	"Answer the first subView in the receiver's list of subViews if it is not empty,
	else nil."

	subViews isEmpty
		ifTrue: [^nil]
		ifFalse: [^subViews first]
