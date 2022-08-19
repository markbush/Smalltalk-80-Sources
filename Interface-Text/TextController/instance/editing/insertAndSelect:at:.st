insertAndSelect: aString at: anInteger
	self selectAt: anInteger.
	self deselect.
	self replaceSelectionWith: (' ' , aString) asText.
	self selectAndScroll
