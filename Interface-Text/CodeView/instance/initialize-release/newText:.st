newText: aText
	super newText: aText.
	initialSelection==nil ifFalse: [self controller findAndSelect: initialSelection]
