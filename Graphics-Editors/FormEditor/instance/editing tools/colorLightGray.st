colorLightGray
	"Set the mask (color) to light gray.  Leaves the tool set in its previous state."

	self normalizeColor: Form lightGray.
	tool _ previousTool
