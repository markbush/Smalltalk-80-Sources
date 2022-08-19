display
	"Display the receiver's border, display the receiver, then display
	the subViews of the receiver.
	Can be sent to the top View of a structured picture in order to display the entire
	structure, or to any particular View in the structure in order to display that
	View and its subViews. It is typically sent in response to an update request to
	a View."

	self displayBorder.
	self displayView.
	self displaySubViews
