centerContents
	contents ~~ nil
		ifTrue:
			[contents
				align: contents boundingBox center
				with: self getWindow center]
