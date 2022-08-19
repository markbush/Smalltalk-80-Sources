spawnEdits: aText from: aController
	context == nil  "cant spawn changes when deselected"
		ifFalse: [super spawnEdits: aText from: aController]
