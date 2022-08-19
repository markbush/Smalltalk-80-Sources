model: aModel label: labelText minimumSize: minimumSize
	| view |
	view _ self new.
	view model: aModel.
	view label: labelText.
	view minimumSize: minimumSize.
	view borderWidth: 1.
	^view
