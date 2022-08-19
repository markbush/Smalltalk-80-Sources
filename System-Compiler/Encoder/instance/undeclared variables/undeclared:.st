undeclared: name
	| message messageLoc messageBox saveBits menu index |
	Cursor normal show.
	requestor selectVariable: name.
	index _ (menu _ ActionMenu
			labels: 'temp\class var\global\undeclared\correct it\abort' withCRs
			lines: #(4)
			selectors: #(declareTemp: declareClassVar: declareGlobal: declareUndeclared: declareCorrect: declareFailed:))
				startUp: #anyButton
				withHeading: ' declare ' asText , (name contractTo: 20) asText allBold , ' as ' asText.
	index = 0 ifTrue: [^ self declareFailed: name].
	^ self perform: (menu selectorAt: index) with: name
