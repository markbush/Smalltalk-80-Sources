openCategoryBrowserOn: aBrowser
	| topView |
	(topView _ self model: aBrowser label: 'Category Browser' minimumSize: 400@250)
		addCategoryView: (0@0 extent: 0.3@0.06) on: aBrowser readOnly: true;
		addClassView: (0@0.06 extent: 0.3@0.28) on: aBrowser readOnly: false;
		addMetaView: (0@0.34 extent: 0.3@0.06) on: aBrowser readOnly: false;
		addProtocolView: (0.3@0 extent: 0.3@0.4) on: aBrowser readOnly: false;
		addSelectorView: (0.6@0 extent: 0.4@0.4) on: aBrowser readOnly: false;
		addTextView: (0@0.4 extent: 1.0@0.6) on: aBrowser initialSelection: nil.
	topView controller open
