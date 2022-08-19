openProtocolBrowserOn: aBrowser
	| topView |
	(topView _ self model: aBrowser label: 'Protocol Browser on ' , aBrowser selectedClass name
					minimumSize: 400@200)
		addProtocolView: (0@0 extent: 1@0.1) on: aBrowser readOnly: true;
		addSelectorView: (0@0.1 extent: 1@0.3) on: aBrowser readOnly: false;
		addTextView: (0@0.4 extent: 1.0@0.6) on: aBrowser initialSelection: nil.
	topView controller open
