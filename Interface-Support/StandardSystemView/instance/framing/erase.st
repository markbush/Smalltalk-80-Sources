erase
	"Clear the display box of the receiver to be gray, as in the screen background."

	self clear: Form gray.
	Display fill: self labelDisplayBox region mask: Form gray.
	isLabelComplemented _ false
