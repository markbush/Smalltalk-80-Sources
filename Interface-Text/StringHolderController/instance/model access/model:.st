model: aModel
	super model: aModel.
	view displayContents == nil
		ifFalse: [self changeParagraph: view displayContents]
