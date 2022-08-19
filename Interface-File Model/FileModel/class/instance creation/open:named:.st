open: aFileModel named: aString
	"Scheduled a view whose model is aFileModel and whose label is aString."
	| topView |
	topView _ StandardSystemView model: aFileModel label: aString minimumSize: 180 @ 180.
	topView addSubView:
			(CodeView on: aFileModel aspect: #text change: #acceptText:from:
				menu: #textMenu initialSelection: nil)
		in: (0@0 extent: 1@1) borderWidth: 1.
	topView controller open
