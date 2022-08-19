colorWhite
	"Set the mask (color) to white.  Leaves the tool set in its previous state."

	self normalizeColor: Form white.
	tool _ previousTool
