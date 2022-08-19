openOn: anOrganizer
	"BrowserView openOn: SystemOrganization."
	| topView aBrowser topY bottomY metaY |
	aBrowser _ Browser new on: anOrganizer.
	topY _ 0.35.		"change this to re-proportion system browser"
	bottomY _ 1 - topY.
	metaY _ 0.05.		"change this to re-proportion system browser"
	(topView _ self model: aBrowser label: 'System Browser' minimumSize: 400@250)
		addCategoryView: (0@0 extent: 0.25@topY) on: aBrowser readOnly: false;
		addClassView: (0.25@0 extent: 0.25@(topY - metaY)) on: aBrowser readOnly: false;
		addMetaView: (0.25@(topY - metaY) extent: 0.25@metaY) on: aBrowser readOnly: false;
		addProtocolView: (0.5@0 extent: 0.25@topY) on: aBrowser readOnly: false;
		addSelectorView: (0.75@0 extent: 0.25@topY) on: aBrowser readOnly: false;
		addTextView: (0@topY extent: 1.0@bottomY) on: aBrowser initialSelection: nil.
	topView controller open
