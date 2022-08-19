openOnFileNames: aFileNameList label: labelString
	"Create and schedule a view of a new instance of me such that the
	instance references the files named in the argument, aFileNameList."
	| topView aFileList |
	aFileList _ self new list: aFileNameList.
	topView _ StandardSystemView model: aFileList label: labelString minimumSize: 200 @ 200.
	topView addSubView:
			(SelectionInListView on: aFileList aspect: #fileName change: #fileName:
				list: #fileNameList menu: #fileListMenu initialSelection: nil)
		in: (0@0 extent: 1@0.2) borderWidth: 1.
	topView addSubView:
			(CodeView on: aFileList aspect: #text change: #acceptText:from:
				menu: #textMenu initialSelection: nil)
		in: (0@0.2 extent: 1@0.8) borderWidth: 1.
	topView controller open
