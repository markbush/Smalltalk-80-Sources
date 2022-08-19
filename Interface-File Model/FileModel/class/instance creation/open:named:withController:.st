open: aFileModel named: aString withController: aController
	"Scheduled a FileModel view with changes made in another editor."
	| topView textView |
	topView _ StandardSystemView model: aFileModel label: aString minimumSize: 180 @ 180.
	textView _ CodeView on: aFileModel aspect: #text change: #acceptText:from:
				menu: #textMenu initialSelection: nil.
	textView controller: aController.
	topView addSubView: textView in: (0@0 extent: 1@1) borderWidth: 1.
	topView controller open
