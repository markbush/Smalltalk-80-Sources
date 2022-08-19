changeModelSelection: anInteger

	changeMsg ~~ nil ifTrue:
		[model perform: changeMsg with:
			(anInteger = 0 ifTrue: [nil] ifFalse: [itemList at: anInteger])]
