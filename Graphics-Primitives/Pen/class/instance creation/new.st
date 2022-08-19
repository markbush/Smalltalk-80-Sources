new
	| quill |
	quill _ super new.
	quill destForm: Display.
	quill frame: Display boundingBox.
	quill sourceOrigin: 0@0.
	quill mask: Form black.
	quill defaultNib: 1.
	quill combinationRule: Form paint.
	quill down.
	quill home.
	quill north.
	^quill
