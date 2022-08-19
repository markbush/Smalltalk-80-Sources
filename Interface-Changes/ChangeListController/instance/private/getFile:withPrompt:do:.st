getFile: aSymbol withPrompt: promptString do: actionBlock
	"find out the file name"

	| fixedBlock fileName directory end |
	fixedBlock _ actionBlock fixTemps.
	FillInTheBlank
		request: promptString
		displayAt: Sensor cursorPoint
		centered: true
		action: [:fileName | fileName]
		initialAnswer: ''.
	fileName isEmpty
		ifFalse:
			[directory _ Disk.
			(directory isLegalFileName: fileName)
				ifTrue: [Cursor wait showWhile:
							[actionBlock value: (directory perform: aSymbol with: fileName)]]
				ifFalse: [Transcript cr; show: 'You specified an illegal file name.']]
