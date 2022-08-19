undo
	"Reset the state of the paragraph prior to the previous cut or paste edit."

	self deselect.
	self closeTypeIn.
	self replaceSelectionWith: UndoSelection.
	self selectAndScroll.
	self updateMarker
