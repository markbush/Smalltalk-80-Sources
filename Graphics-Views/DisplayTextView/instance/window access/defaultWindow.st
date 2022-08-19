defaultWindow
	^((0@0 extent: editParagraph extent) expandBy: self paragraphInset)
		expandBy: borderWidth
