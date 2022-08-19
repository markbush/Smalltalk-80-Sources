setDestForm: df sourceForm: sf halftoneForm: hf combinationRule: cr destOrigin: destOrigin sourceOrigin: sourceOrigin extent: extent clipRect: clipRect
	| aPoint |
	destForm _ df.
	sourceForm _ sf.
	halftoneForm _ hf.
	combinationRule _ cr.
	destX _ destOrigin x.
	destY _ destOrigin y.
	sourceX _ sourceOrigin x.
	sourceY _ sourceOrigin y.
	width _ extent x.
	height _ extent y.
	aPoint _ clipRect origin.
	clipX _ aPoint x.
	clipY _ aPoint y.
	aPoint _ clipRect corner.
	clipWidth _ aPoint x - clipX.
	clipHeight _ aPoint y - clipY
