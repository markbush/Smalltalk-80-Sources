removeSubViews
	"Remove all the receiver's subViews."

	subViews do:
		[:aView |
		aView superView: nil.
		aView unlock].
	self resetSubViews
