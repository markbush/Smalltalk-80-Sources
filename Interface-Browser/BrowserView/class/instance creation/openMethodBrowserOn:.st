openMethodBrowserOn: aBrowser
	| topView |
	(topView _ self model: aBrowser label: 'Method Browser on ' , aBrowser selectedClass name
					minimumSize: 250@120)
		addSelectorView: (0@0 extent: 1@0.15) on: aBrowser readOnly: true;
		addTextView: (0@0.15 extent: 1@0.85) on: aBrowser initialSelection: nil.
	topView controller open
