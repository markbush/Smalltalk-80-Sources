colorBlack
	"Set the mask (color) to black. Leaves the tool set in its previous state."

	self normalizeColor: Form black.
	tool _ previousTool
