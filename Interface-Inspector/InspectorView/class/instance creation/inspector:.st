inspector: anInspector
	"Answer an instance of me on the model, anInspector.
	Label and minimum size are not set."

	| anInspectorView |
	anInspectorView _ InspectorView new.
	anInspectorView model: anInspector.
	self view: anInspector in: (0@0 extent: 1@1) of: anInspectorView.
	^anInspectorView
