openMethodBrowserOn: aBrowser withController: aController
	"aController may contain changes that haven't already been accepted"
	| topView textView |
	topView _ self model: aBrowser
			label: 'Method Browser on ' , aBrowser selectedClass name
			minimumSize: 250@120.
	topView addSelectorView: (0@0 extent: 1@0.15) on: aBrowser readOnly: true.
	textView _ CodeView on: aBrowser aspect: #text change: #acceptText:from:
				menu: #textMenu initialSelection: nil.
	textView controller: aController.
	topView addSubView: textView in: (0@0.15 extent: 1@0.85) borderWidth: 1.
	topView controller open
