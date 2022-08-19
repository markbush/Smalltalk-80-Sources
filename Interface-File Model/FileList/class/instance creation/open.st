open		"FileList open"
	"Create and schedule a view of a new instance of me such that the instance references the files named in the argument, aFileNameList, that can be found in the directory, aFileDirectory."
	| topView aFileList patternView |
	aFileList _ self new list: OrderedCollection new.
	topView _ StandardSystemView model: aFileList label: 'File List' minimumSize: 200 @ 200.
	patternView _
		CodeView on: aFileList aspect: #pattern change: #acceptPattern:from:
				menu: #patternMenu initialSelection: nil.
	topView addSubView: patternView in: (0@0 extent: 1@0.07) borderWidth: 1.
	patternView controller: AlwaysAcceptCodeController new.
	topView addSubView:
			(SelectionInListView on: aFileList aspect: #fileName change: #fileName:
				list: #fileNameList menu: #fileListMenu initialSelection: nil)
		in: (0@0.07 extent: 1@0.23) borderWidth: 1.
	topView addSubView:
			(OnlyWhenSelectedCodeView on: aFileList aspect: #text change: #acceptText:from:
				menu: #textMenu initialSelection: nil selection: #isSelected)
		in: (0@0.3 extent: 1@0.7) borderWidth: 1.
	topView controller open
