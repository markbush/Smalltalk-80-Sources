newSourceForm
	"Allow the user to define a new sourceForm for the FormEditor. Copying the
	sourceForm onto the display is the primary graphical operation. Resets the tool to
	be repeatCopy."
	form _ Form fromUser: grid.
	tool _ previousTool
