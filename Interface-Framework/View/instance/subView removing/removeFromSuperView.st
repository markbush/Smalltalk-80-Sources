removeFromSuperView
	"Delete the receiver from its superView's collection of subViews."

	superView ~= nil ifTrue: [superView removeSubView: self]
