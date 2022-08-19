openClassBrowserOn: aBrowser
	| topView |
	(topView _ self model: aBrowser label: 'Class Browser' minimumSize: 400@250)
		addClassView: (0@0 extent: 0.5@0.1) on: aBrowser readOnly: true;
		addMetaView: (0.5@0 extent: 0.5@0.1) on: aBrowser readOnly: false;
		addProtocolView: (0@0.1 extent: 0.5@0.3) on: aBrowser readOnly: false;
		addSelectorView: (0.5@0.1 extent: 0.5@0.3) on: aBrowser readOnly: false;
		addTextView: (0@0.4 extent: 1.0@0.6) on: aBrowser initialSelection: nil.
	topView controller open
