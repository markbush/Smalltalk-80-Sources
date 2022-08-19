deEmphasize
	"Modify the emphasis (highlighting, special tabs) of the receiver.  This includes
	objects such as labels, lines, and boxes.  Typically used so that the receiver is not
	presented as active.  Do this for the receiver and then for each of the receiver's
	subViews."

	self deEmphasizeView.
	self deEmphasizeSubViews
