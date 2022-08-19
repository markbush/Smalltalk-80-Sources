colorDarkGray
	"Set the mask (color) to dark gray.  Leaves the tool set in its previous state."

	self normalizeColor: Form darkGray.
	tool _ previousTool
