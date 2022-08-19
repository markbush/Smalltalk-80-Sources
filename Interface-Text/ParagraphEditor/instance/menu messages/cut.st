cut
	"Cut out the current selection and redisplay the paragraph if necessary."

	self deselect.
	self closeTypeIn.
	self replaceSelectionWith: Text new.
	self selectAndScroll.
	self updateMarker.
	CurrentSelection _ UndoSelection copy
