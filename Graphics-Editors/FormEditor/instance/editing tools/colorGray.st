colorGray
	"Set the mask (color) to gray.  Leaves the tool set in its previous state."

	self normalizeColor: Form gray.
	tool _ previousTool
