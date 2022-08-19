processRedButton
	"The user pressed a red mouse button, meaning create a new text selection.
	Highlighting the selection is carried out by the paragraph itself.  Double
	clicking causes a selection of the area between the nearest enclosing delimitors;
	extension is based on both ends if different."

	| paragraphOrigin selectionBlocks |
	self deselect.
	self closeTypeIn.
	paragraphOrigin _ paragraph compositionRectangle origin.
	selectionBlocks _ paragraph mouseSelect: startBlock to: stopBlock.
	selectionShowing _ true.
	startBlock _ selectionBlocks at: 1.
	stopBlock _ selectionBlocks at: 2.
	self updateMarker.
	self setEmphasisHere
