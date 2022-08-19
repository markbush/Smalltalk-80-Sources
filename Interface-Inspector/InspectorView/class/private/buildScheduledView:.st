buildScheduledView: anInspector
	| topView |
	topView _ self model: anInspector label: anInspector object class name minimumSize: 180 @ 180.
	self view: anInspector in: (0@0 extent: 1@1) of: topView.
	^ topView
