releaseSubView: aView
	"Delete aView from the receiver's list of subViews and send it the message
	'release' (so that it can break up cycles with subViews, etc.)"

	self removeSubView: aView.
	aView release
