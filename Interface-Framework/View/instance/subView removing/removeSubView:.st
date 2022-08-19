removeSubView: aView
	"Remove aView from the receiver's list of subViews.
	 If the list of subViews does not contain aView, an error window is created."

	subViews remove: aView.
	aView superView: nil.
	aView unlock
