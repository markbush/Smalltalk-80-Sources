openOn: aBrowser withController: aController
	"aController may contain changes that haven't already been accepted"
	| topView textView |
	(topView _ self model: aBrowser label: 'System Browser' minimumSize: 400@250)
		addCategoryView: (0@0 extent: 0.25@0.4) on: aBrowser readOnly: false;
		addClassView: (0.25@0 extent: 0.25@0.34) on: aBrowser readOnly: false;
		addMetaView: (0.25@0.34 extent: 0.25@0.06) on: aBrowser readOnly: false;
		addProtocolView: (0.5@0 extent: 0.25@0.4) on: aBrowser readOnly: false;
		addSelectorView: (0.75@0 extent: 0.25@0.4) on: aBrowser readOnly: false.
	textView _ CodeView on: aBrowser aspect: #text change: #acceptText:from:
				menu: #textMenu initialSelection: nil.
	textView controller: aController.
	topView addSubView: textView in: (0@0.4 extent: 1@0.6) borderWidth: 1.
	topView controller open
