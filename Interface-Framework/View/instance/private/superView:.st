superView: aView
	"Sets the View's superView to aView and unlocks the View (see View|unlock).
	It is sent by View|addSubView:  in order to properly set all the links."

	superView _ aView.
	self unlock
