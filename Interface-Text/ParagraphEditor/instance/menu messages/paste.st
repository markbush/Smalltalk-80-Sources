paste
	"Paste the text from the shared buffer over the current selection and redisplay
	if necessary."

	self deselect.
	self closeTypeIn.
	self replaceSelectionWith: CurrentSelection.
	self selectAndScroll.
	self updateMarker
