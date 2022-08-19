updateRequest
	| cancel |
	self controller textHasChanged ifFalse: [^true].
	self superView isCollapsed
		ifFalse:
			[Display reverse: insetDisplayBox mask: Form gray.
	Display reverse: (insetDisplayBox insetBy: 4) mask: Form gray].
	cancel _ self confirm: 'The text showing has been altered.
Do you wish to discard those changes?'.
	self superView isCollapsed
		ifFalse:
			[Display reverse: insetDisplayBox mask: Form gray.
	Display reverse: (insetDisplayBox insetBy: 4) mask: Form gray].
	^ cancel
